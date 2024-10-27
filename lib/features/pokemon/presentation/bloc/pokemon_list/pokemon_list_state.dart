part of 'pokemon_list_bloc.dart';

@freezed
class PokemonListState with _$PokemonListState {
  const factory PokemonListState({
    @Default([]) List<Pokemon> pokemons,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasReachedMax,
    @Default(0) int currentPage,
    String? error,
  }) = _PokemonListState;

  factory PokemonListState.initial() => const PokemonListState();
}
