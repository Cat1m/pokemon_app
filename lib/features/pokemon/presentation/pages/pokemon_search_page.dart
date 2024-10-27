import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/core/utils/debouncer.dart';
import 'package:pokemon_app/features/pokemon/presentation/pages/pokemon_detail_page.dart';
import 'package:pokemon_app/features/pokemon/presentation/theme/app_colors.dart';
import '../bloc/pokemon_detail/pokemon_detail_bloc.dart';

import '../widgets/pokemon_card.dart';

// Những cải tiến có thể thêm:

// Search history
// Search suggestions
// Filter by type
// Voice search
// Offline search support

class PokemonSearchPage extends StatefulWidget {
  const PokemonSearchPage({super.key});

  @override
  State<PokemonSearchPage> createState() => _PokemonSearchPageState();
}

class _PokemonSearchPageState extends State<PokemonSearchPage> {
  final _searchController = TextEditingController();
  final _debounce = Debouncer(milliseconds: 500);

  @override
  void dispose() {
    _searchController.dispose();
    _debounce.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (query.isEmpty) return;

    _debounce.run(() {
      context
          .read<PokemonDetailBloc>()
          .add(PokemonDetailEvent.fetch(query.toLowerCase()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          onChanged: _onSearchChanged,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            hintText: 'Search Pokemon by name or ID...',
            hintStyle: TextStyle(color: Colors.white70),
            border: InputBorder.none,
          ),
        ),
      ),
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
                  Text(
                    'Pokemon not found',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Try searching with a different name or ID',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                  ),
                ],
              ),
            );
          }

          if (state.pokemon != null) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: PokemonCard(
                pokemon: state.pokemon!,
                onTap: () {
                  // Navigate to detail page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider.value(
                        value: context.read<PokemonDetailBloc>(),
                        child: PokemonDetailPage(
                          pokemonId: state.pokemon!.id.toString(),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }

          // Initial state
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  size: 64,
                  color: AppColors.textSecondary.withOpacity(0.5),
                ),
                const SizedBox(height: 16),
                Text(
                  'Search for a Pokemon',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
