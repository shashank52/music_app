import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/core/my_app.dart';
import 'package:music_app/features/themes/bloc/theme_mode/themes_bloc.dart';

class MultipleBlocProvider extends StatelessWidget {
  const MultipleBlocProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemesBloc(),
        ),
      ],
      child: const MyApp(),
    );
  }
}
