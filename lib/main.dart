import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/features/pokemon/presentation/theme/app_theme.dart';
import 'core/di/injection.dart';

import 'features/pokemon/presentation/bloc/pokemon_list/pokemon_list_bloc.dart';

import 'features/pokemon/presentation/pages/pokemon_list_page.dart';
import 'features/pokemon/presentation/theme/app_colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex',
      theme: AppTheme.light,
      home: BlocProvider(
        create: (context) =>
            getIt<PokemonListBloc>()..add(const PokemonListEvent.fetch()),
        child: const PokemonListPage(),
      ),
    );
  }
}


// Add Caching
// Thêm Dark Theme
// Custom Transitions