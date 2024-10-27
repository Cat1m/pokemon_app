import 'package:injectable/injectable.dart';
import 'pokemon_remote_datasource.dart';
import '../models/pokemon_model.dart';
import '../models/pokemon_list_model.dart';
import '../../../../core/network/api_client.dart';

abstract class IPokemonRemoteDataSource {
  Future<PokemonListModel> getPokemonList({int offset = 0, int limit = 20});
  Future<PokemonModel> getPokemonDetail(String id);
}

@dev
@LazySingleton(as: IPokemonRemoteDataSource)
class PokemonRemoteDataSourceImpl implements IPokemonRemoteDataSource {
  final PokemonRemoteDataSource _remoteDataSource;

  PokemonRemoteDataSourceImpl(this._remoteDataSource);

  @override
  Future<PokemonListModel> getPokemonList({int offset = 0, int limit = 20}) {
    return ApiClient.handleResponse(
      apiCall: () => _remoteDataSource.getPokemonList(
        offset: offset,
        limit: limit,
      ),
    );
  }

  @override
  Future<PokemonModel> getPokemonDetail(String id) {
    return ApiClient.handleResponse(
      apiCall: () => _remoteDataSource.getPokemonDetail(id),
    );
  }
}
