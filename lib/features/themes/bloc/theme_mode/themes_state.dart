part of 'themes_bloc.dart';

class ThemesState extends Equatable {
  const ThemesState(
      {required this.themeMode,
      this.flexScheme = DEFAULT_FLEX_SCHEME,
      required this.lightTheme,
      required this.darkTheme});
  final ThemeMode themeMode;

  final FlexScheme flexScheme;
  final ThemeData lightTheme;
  final ThemeData darkTheme;

  ThemesState copyWith(
      {ThemeMode? themeMode,
      FlexScheme? flexScheme,
      ThemeData? lightTheme,
      ThemeData? darkTheme}) {
    return ThemesState(
        themeMode: themeMode ?? this.themeMode,
        flexScheme: flexScheme ?? this.flexScheme,
        lightTheme: lightTheme ?? this.lightTheme,
        darkTheme: darkTheme ?? this.darkTheme);
  }

  @override
  List<Object> get props => [themeMode, flexScheme, lightTheme, darkTheme];
}
