import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/app_router/app_routes.dart';
import 'package:music_app/features/themes/bloc/theme_mode/themes_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemesBloc, ThemesState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: state.themeMode,
          title: 'Flutter Demo',
          theme: state.lightTheme,
          darkTheme: state.darkTheme,
          onGenerateRoute: AppRoutes.onGenerateRoute,
        );
      },
    );
  }
}
