import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:pokemon_app/core/usecases/usecase.dart';
import '../../../../core/error/failures.dart';

import '../entities/pokemon.dart';
import '../repositories/pokemon_repository.dart';

class SearchPokemonParams {
  final String query;

  const SearchPokemonParams({required this.query});
}

@dev
@lazySingleton
class SearchPokemon implements UseCaseWithParams<Pokemon, SearchPokemonParams> {
  final PokemonRepository repository;

  SearchPokemon(this.repository);

  @override
  Future<Either<Failure, Pokemon>> call(SearchPokemonParams params) {
    return repository.getPokemonDetail(params.query.toLowerCase());
  }
}
