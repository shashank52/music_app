import 'package:flutter/material.dart';
import 'package:music_app/app_router/route_paths.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListTile(
        title: const Text(
          'Themes',
        ),
        onTap: () => Navigator.of(context).pushNamed(RoutePath.themes),
      ),
    );
  }
}
