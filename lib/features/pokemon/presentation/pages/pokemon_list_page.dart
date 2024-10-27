import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/core/di/injection.dart';
import 'package:pokemon_app/features/pokemon/presentation/bloc/pokemon_detail/pokemon_detail_bloc.dart';
import 'package:pokemon_app/features/pokemon/presentation/pages/pokemon_detail_page.dart';
import 'package:pokemon_app/features/pokemon/presentation/pages/pokemon_search_page.dart';
import 'package:pokemon_app/features/pokemon/presentation/theme/app_colors.dart';
import 'package:pokemon_app/features/pokemon/presentation/widgets/error_view.dart';
import 'package:pokemon_app/features/pokemon/presentation/widgets/infinite_scroll_controller.dart';
import 'package:pokemon_app/features/pokemon/presentation/widgets/skeleton_card.dart';
import '../bloc/pokemon_list/pokemon_list_bloc.dart';

import '../widgets/pokemon_card.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({super.key});

  @override
  State<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  late final InfiniteScrollController _scrollController;
  bool _showScrollToTop = false;

  @override
  void initState() {
    super.initState();
    _scrollController = InfiniteScrollController(
      onLoadMore: () {
        context.read<PokemonListBloc>().add(const PokemonListEvent.loadMore());
      },
    );
    _scrollController.addListener(() {
      final showButton = _scrollController.offset > 1000;
      if (showButton != _showScrollToTop) {
        setState(() => _showScrollToTop = showButton);
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokédex'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlocProvider(
                    create: (context) => getIt<PokemonDetailBloc>(),
                    child: const PokemonSearchPage(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<PokemonListBloc>().add(const PokemonListEvent.refresh());
        },
        child: BlocBuilder<PokemonListBloc, PokemonListState>(
          builder: (context, state) {
            // Inside PokemonListPage build method
            if (state.isLoading && state.pokemons.isEmpty) {
              return GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: 6, // Show 6 skeleton cards
                itemBuilder: (context, index) => const SkeletonCard(),
              );
            }

            if (state.error != null && state.pokemons.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      state.error!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.red),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<PokemonListBloc>()
                            .add(const PokemonListEvent.fetch());
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              );
            }

            // Error State
            if (state.error != null && state.pokemons.isEmpty) {
              return ErrorView(
                message: state.error ?? 'Something went wrong',
                onRetry: () {
                  context
                      .read<PokemonListBloc>()
                      .add(const PokemonListEvent.fetch());
                },
              );
            }

            return CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.all(16),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        // Don't show loading indicators in grid
                        if (index >= state.pokemons.length) return null;

                        final pokemon = state.pokemons[index];
                        return PokemonCard(
                          pokemon: pokemon,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlocProvider(
                                  create: (context) =>
                                      getIt<PokemonDetailBloc>()
                                        ..add(PokemonDetailEvent.fetch(
                                          pokemon.id.toString(),
                                        )),
                                  child: PokemonDetailPage(
                                    pokemonId: pokemon.id.toString(),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      childCount: state.isLoadingMore
                          ? state.pokemons.length + 2
                          : state.pokemons.length,
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                  ),
                ),
                // Show single loading indicator at bottom
                if (state.isLoadingMore)
                  const SliverPadding(
                    padding: EdgeInsets.only(bottom: 16.0),
                    sliver: SliverToBoxAdapter(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                            SizedBox(width: 8),
                            Text('Loading more Pokémon...'),
                          ],
                        ),
                      ),
                    ),
                  ),
                // Show end of list indicator when reached max
                if (state.hasReachedMax)
                  SliverToBoxAdapter(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'You\'ve caught them all!',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: AppColors.textSecondary,
                                  ),
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: AnimatedOpacity(
        opacity: _showScrollToTop ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 200),
        child: FloatingActionButton(
          onPressed: _showScrollToTop
              ? () {
                  _scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeOutQuad,
                  );
                }
              : null,
          child: const Icon(Icons.arrow_upward),
        ),
      ),
    );
  }
}
