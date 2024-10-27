import 'package:dartz/dartz.dart';

import '../error/failures.dart';

// Interface cho Use Cases không có params
abstract class UseCase<Type> {
  Future<Either<Failure, Type>> call();
}

// Interface cho Use Cases có params
abstract class UseCaseWithParams<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
