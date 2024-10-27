part of 'pokemon_detail_bloc.dart';

@freezed
class PokemonDetailEvent with _$PokemonDetailEvent {
  const factory PokemonDetailEvent.fetch(String id) = _Fetch;
}
