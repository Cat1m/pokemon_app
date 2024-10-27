import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../models/pokemon_model.dart';
import '../models/pokemon_list_model.dart';

part 'pokemon_remote_datasource.g.dart';

@dev
@lazySingleton
@RestApi()
abstract class PokemonRemoteDataSource {
  @factoryMethod
  factory PokemonRemoteDataSource(@Named("pokemonDio") Dio dio) =
      _PokemonRemoteDataSource;

  @GET('pokemon')
  Future<PokemonListModel> getPokemonList({
    @Query('offset') int offset = 0,
    @Query('limit') int limit = 20,
  });

  @GET('pokemon/{id}')
  Future<PokemonModel> getPokemonDetail(@Path('id') String id);
}
