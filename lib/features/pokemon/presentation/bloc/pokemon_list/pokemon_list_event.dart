part of 'pokemon_list_bloc.dart';

@freezed
class PokemonListEvent with _$PokemonListEvent {
  const factory PokemonListEvent.fetch() = _Fetch;
  const factory PokemonListEvent.loadMore() = _LoadMore;
  const factory PokemonListEvent.refresh() = _Refresh;
}
