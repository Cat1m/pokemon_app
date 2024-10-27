import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

const env = Environment('dev');

@InjectableInit(
  preferRelativeImports: true,
  asExtension: false,
)
GetIt configureDependencies() => init(getIt, environment: env.name);
