import 'package:flutter/material.dart';
import 'package:music_app/app_router/route_paths.dart';
import 'package:music_app/features/settings/view/settings_screen.dart';
import 'package:music_app/features/themes/view/themes_screen.dart';

import '../features/home/view/home_screen.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePath.home:
        return MaterialPageRoute(
          settings: settings,
          builder: ((context) => const HomeScreen()),
        );

      case RoutePath.settings:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const SettingsScreen(),
        );
      case RoutePath.themes:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const ThemesScreen(),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: ((context) => const HomeScreen()),
        );
    }
  }
}
