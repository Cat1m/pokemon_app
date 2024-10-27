import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_app/repository/repository_helper.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/pokemon_remote_datasource_impl.dart';

@dev
@LazySingleton(as: PokemonRepository)
class PokemonRepositoryImpl with RepositoryHelper implements PokemonRepository {
  final IPokemonRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  PokemonRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<Pokemon>>> getPokemonList({
    int offset = 0,
    int limit = 20,
  }) async {
    return handleNetworkCall(
      networkInfo: networkInfo,
      call: () async {
        final pokemonList = await remoteDataSource.getPokemonList(
          offset: offset,
          limit: limit,
        );

        final detailedPokemons = await Future.wait(
          pokemonList.results.map(
            (pokemon) => remoteDataSource.getPokemonDetail(
              pokemon.url.split('/').reversed.skip(1).first,
            ),
          ),
        );

        return detailedPokemons.map((model) => model.toDomain()).toList();
      },
    );
  }

  @override
  Future<Either<Failure, Pokemon>> getPokemonDetail(String id) {
    return handleNetworkCall(
      networkInfo: networkInfo,
      call: () async {
        final pokemon = await remoteDataSource.getPokemonDetail(id);
        return pokemon.toDomain();
      },
    );
  }
}
