import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_app/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokemon_app/features/pokemon/domain/usecases/get_pokemon_detail.dart';

part 'pokemon_detail_event.dart';
part 'pokemon_detail_state.dart';
part 'pokemon_detail_bloc.freezed.dart';

@injectable
class PokemonDetailBloc extends Bloc<PokemonDetailEvent, PokemonDetailState> {
  final GetPokemonDetail getPokemonDetail;

  PokemonDetailBloc({
    required this.getPokemonDetail,
  }) : super(PokemonDetailState.initial()) {
    on<PokemonDetailEvent>((event, emit) async {
      await event.map(
        fetch: (e) => _onFetch(e.id, emit),
      );
    });
  }

  Future<void> _onFetch(String id, Emitter<PokemonDetailState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));

    final result = await getPokemonDetail(GetPokemonDetailParams(id: id));

    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        error: failure.toString(),
      )),
      (pokemon) => emit(state.copyWith(
        isLoading: false,
        pokemon: pokemon,
      )),
    );
  }
}
