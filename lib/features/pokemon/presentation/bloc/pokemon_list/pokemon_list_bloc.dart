import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_app/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokemon_app/features/pokemon/domain/usecases/get_pokemon_list.dart';

part 'pokemon_list_event.dart';
part 'pokemon_list_state.dart';
part 'pokemon_list_bloc.freezed.dart';

@injectable
class PokemonListBloc extends Bloc<PokemonListEvent, PokemonListState> {
  final GetPokemonList getPokemonList;
  static const int _pageSize = 20;

  PokemonListBloc({
    required this.getPokemonList,
  }) : super(PokemonListState.initial()) {
    on<PokemonListEvent>((event, emit) async {
      await event.map(
        fetch: (_) => _onFetch(emit),
        loadMore: (_) => _onLoadMore(emit),
        refresh: (_) => _onRefresh(emit),
      );
    });
  }

  Future<void> _onFetch(Emitter<PokemonListState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));

    final result = await getPokemonList(
      const GetPokemonListParams(limit: _pageSize),
    );

    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        error: failure.toString(),
      )),
      (pokemons) => emit(state.copyWith(
        isLoading: false,
        pokemons: pokemons,
        currentPage: 1,
        hasReachedMax: pokemons.length < _pageSize,
      )),
    );
  }

  Future<void> _onLoadMore(Emitter<PokemonListState> emit) async {
    if (state.isLoadingMore || state.hasReachedMax) return;

    emit(state.copyWith(isLoadingMore: true));

    final result = await getPokemonList(
      GetPokemonListParams(
        offset: state.pokemons.length,
        limit: _pageSize,
      ),
    );

    result.fold(
      (failure) => emit(state.copyWith(
        isLoadingMore: false,
        error: failure.toString(),
      )),
      (newPokemons) {
        final hasReachedMax = newPokemons.length < _pageSize;
        emit(state.copyWith(
          isLoadingMore: false,
          pokemons: [...state.pokemons, ...newPokemons],
          currentPage: state.currentPage + 1,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }

  Future<void> _onRefresh(Emitter<PokemonListState> emit) async {
    emit(PokemonListState.initial());
    add(const PokemonListEvent.fetch());
  }
}
