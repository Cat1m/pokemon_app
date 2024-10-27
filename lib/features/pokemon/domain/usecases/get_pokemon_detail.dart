import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:pokemon_app/core/usecases/usecase.dart';
import '../../../../core/error/failures.dart';

import '../entities/pokemon.dart';
import '../repositories/pokemon_repository.dart';

class GetPokemonDetailParams {
  final String id;

  const GetPokemonDetailParams({required this.id});
}

@dev
@lazySingleton
class GetPokemonDetail
    implements UseCaseWithParams<Pokemon, GetPokemonDetailParams> {
  final PokemonRepository repository;

  GetPokemonDetail(this.repository);

  @override
  Future<Either<Failure, Pokemon>> call(GetPokemonDetailParams params) {
    return repository.getPokemonDetail(params.id);
  }
}
