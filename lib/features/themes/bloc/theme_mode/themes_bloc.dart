import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/constants.dart';

part 'themes_event.dart';
part 'themes_state.dart';

class ThemesBloc extends Bloc<ThemesEvent, ThemesState> {
  ThemesBloc()
      : super(ThemesState(
            themeMode: ThemeMode.system,
            lightTheme: FlexThemeData.light(
                scheme: FlexScheme.aquaBlue, useMaterial3: true),
            darkTheme: FlexThemeData.dark(
                scheme: FlexScheme.aquaBlue, useMaterial3: true))) {
    on<ThemeModeUpdateEvent>((event, emit) {
      emit(state.copyWith(themeMode: event.themeMode));
    });
    on<ThemeSchemeUpdateEvent>(
      (event, emit) {
        emit(state.copyWith(
            flexScheme: event.flexScheme,
            lightTheme: FlexThemeData.light(
                scheme: event.flexScheme, useMaterial3: true),
            darkTheme: FlexThemeData.dark(
                scheme: event.flexScheme, useMaterial3: true)));
      },
    );
  }
}
