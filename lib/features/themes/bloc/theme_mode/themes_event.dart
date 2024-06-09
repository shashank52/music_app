part of 'themes_bloc.dart';

sealed class ThemesEvent extends Equatable {
  const ThemesEvent();

  @override
  List<Object> get props => [];
}

class ThemeModeUpdateEvent extends ThemesEvent {
  const ThemeModeUpdateEvent({required this.themeMode});
  final ThemeMode themeMode;

  @override
  List<Object> get props => [themeMode];
}

class ThemeSchemeUpdateEvent extends ThemesEvent {
  const ThemeSchemeUpdateEvent({required this.flexScheme});
  final FlexScheme flexScheme;

   @override
  List<Object> get props => [flexScheme];
}
