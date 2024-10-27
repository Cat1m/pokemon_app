part of 'pokemon_detail_bloc.dart';

@freezed
class PokemonDetailState with _$PokemonDetailState {
  const factory PokemonDetailState({
    Pokemon? pokemon,
    @Default(false) bool isLoading,
    String? error,
  }) = _PokemonDetailState;

  factory PokemonDetailState.initial() => const PokemonDetailState();
}
