import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/features/pokemon/presentation/theme/app_colors.dart';
import '../bloc/pokemon_detail/pokemon_detail_bloc.dart';

class PokemonDetailPage extends StatelessWidget {
  final String pokemonId;

  const PokemonDetailPage({
    super.key,
    required this.pokemonId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PokemonDetailBloc, PokemonDetailState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.error != null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.error!),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<PokemonDetailBloc>()
                          .add(PokemonDetailEvent.fetch(pokemonId));
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          final pokemon = state.pokemon;
          if (pokemon == null) return const SizedBox();

          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 300,
                pinned: true,
                flexibleSpace: // Trong PokemonDetailPage, thay đổi hero tag để match với card
                    FlexibleSpaceBar(
                  title: Text(
                    pokemon.name.toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  background: Hero(
                    tag: 'pokemon_${pokemon.id}', // Unified hero tag
                    child: Image.network(
                      pokemon.imageUrl,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Types
                      Wrap(
                        spacing: 8,
                        children: pokemon.types
                            .map((type) => Chip(
                                  label: Text(
                                    type.toUpperCase(),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor:
                                      AppColors.typeColors[type.toLowerCase()],
                                ))
                            .toList(),
                      ),
                      const SizedBox(height: 24),

                      // Stats
                      Text(
                        'Base Stats',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 16),
                      ...pokemon.stats.entries.map(
                        (stat) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: Text(
                                  stat.key.toUpperCase(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(stat.value.toString()),
                              const SizedBox(width: 8),
                              Expanded(
                                child: LinearProgressIndicator(
                                  value: stat.value / 200,
                                  backgroundColor: Colors.grey[200],
                                  color: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
