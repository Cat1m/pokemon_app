import 'package:dartz/dartz.dart';
import 'package:pokemon_app/core/error/exceptions.dart';
import 'package:pokemon_app/core/error/failures.dart';
import 'package:pokemon_app/core/network/network_info.dart';

mixin RepositoryHelper {
  Future<Either<Failure, T>> handleNetworkCall<T>({
    required NetworkInfo networkInfo,
    required Future<T> Function() call,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await call();
        return Right(result);
      } on ServerException catch (e) {
        return Left(Failure.server(e.message));
      } catch (e) {
        return Left(const Failure.server());
      }
    } else {
      return const Left(Failure.network('No internet connection'));
    }
  }

  Future<Either<Failure, T>> handleDatabaseCall<T>({
    required Future<T> Function() call,
  }) async {
    try {
      final result = await call();
      return Right(result);
    } on CacheException catch (e) {
      return Left(Failure.cache(e.message));
    } catch (e) {
      return Left(const Failure.cache());
    }
  }
}
