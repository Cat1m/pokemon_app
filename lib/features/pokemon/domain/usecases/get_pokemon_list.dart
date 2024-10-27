import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:pokemon_app/core/usecases/usecase.dart';
import '../../../../core/error/failures.dart';

import '../entities/pokemon.dart';
import '../repositories/pokemon_repository.dart';

class GetPokemonListParams {
  final int offset;
  final int limit;

  const GetPokemonListParams({
    this.offset = 0,
    this.limit = 20,
  });
}

@dev
@lazySingleton
class GetPokemonList
    implements UseCaseWithParams<List<Pokemon>, GetPokemonListParams> {
  final PokemonRepository repository;

  GetPokemonList(this.repository);

  @override
  Future<Either<Failure, List<Pokemon>>> call(GetPokemonListParams params) {
    return repository.getPokemonList(
      offset: params.offset,
      limit: params.limit,
    );
  }
}
