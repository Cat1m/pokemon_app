// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;

import '../../features/pokemon/data/datasources/pokemon_remote_datasource.dart'
    as _i765;
import '../../features/pokemon/data/datasources/pokemon_remote_datasource_impl.dart'
    as _i648;
import '../../features/pokemon/data/repositories/pokemon_repository_impl.dart'
    as _i587;
import '../../features/pokemon/domain/repositories/pokemon_repository.dart'
    as _i837;
import '../../features/pokemon/domain/usecases/get_pokemon_detail.dart'
    as _i752;
import '../../features/pokemon/domain/usecases/get_pokemon_list.dart' as _i445;
import '../../features/pokemon/domain/usecases/search_pokemon.dart' as _i746;
import '../../features/pokemon/presentation/bloc/pokemon_detail/pokemon_detail_bloc.dart'
    as _i1043;
import '../../features/pokemon/presentation/bloc/pokemon_list/pokemon_list_bloc.dart'
    as _i186;
import '../network/network_info.dart' as _i932;
import 'register_module.dart' as _i291;

const String _dev = 'dev';

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i973.InternetConnectionChecker>(
    () => registerModule.connectionChecker,
    registerFor: {_dev},
  );
  gh.lazySingleton<_i361.Dio>(
    () => registerModule.pokemonDio,
    instanceName: 'pokemonDio',
    registerFor: {_dev},
  );
  gh.lazySingleton<_i765.PokemonRemoteDataSource>(
    () => _i765.PokemonRemoteDataSource(
        gh<_i361.Dio>(instanceName: 'pokemonDio')),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i932.NetworkInfo>(
    () => _i932.NetworkInfoImpl(gh<_i973.InternetConnectionChecker>()),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i648.IPokemonRemoteDataSource>(
    () =>
        _i648.PokemonRemoteDataSourceImpl(gh<_i765.PokemonRemoteDataSource>()),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i837.PokemonRepository>(
    () => _i587.PokemonRepositoryImpl(
      remoteDataSource: gh<_i648.IPokemonRemoteDataSource>(),
      networkInfo: gh<_i932.NetworkInfo>(),
    ),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i752.GetPokemonDetail>(
    () => _i752.GetPokemonDetail(gh<_i837.PokemonRepository>()),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i445.GetPokemonList>(
    () => _i445.GetPokemonList(gh<_i837.PokemonRepository>()),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i746.SearchPokemon>(
    () => _i746.SearchPokemon(gh<_i837.PokemonRepository>()),
    registerFor: {_dev},
  );
  gh.factory<_i186.PokemonListBloc>(
      () => _i186.PokemonListBloc(getPokemonList: gh<_i445.GetPokemonList>()));
  gh.factory<_i1043.PokemonDetailBloc>(() =>
      _i1043.PokemonDetailBloc(getPokemonDetail: gh<_i752.GetPokemonDetail>()));
  return getIt;
}

class _$RegisterModule extends _i291.RegisterModule {}
