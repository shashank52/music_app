import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/theme_mode/themes_bloc.dart';

class ThemesScreen extends StatelessWidget {
  const ThemesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Themes'),
        actions: [
          BlocBuilder<ThemesBloc, ThemesState>(
            builder: (context, state) {
              if (state.themeMode == ThemeMode.light) {
                return IconButton(
                    onPressed: () => context.read<ThemesBloc>().add(
                        const ThemeModeUpdateEvent(themeMode: ThemeMode.dark)),
                    icon: const Icon(Icons.light_mode));
              } else {
                return IconButton(
                    onPressed: () => context.read<ThemesBloc>().add(
                        const ThemeModeUpdateEvent(themeMode: ThemeMode.light)),
                    icon: const Icon(Icons.dark_mode));
              }
            },
          )
        ],
      ),
      body: BlocBuilder<ThemesBloc, ThemesState>(
        builder: (context, state) {
          return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 8, crossAxisSpacing: 4, crossAxisCount: 6),
              itemCount: FlexScheme.values.length,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () => context.read<ThemesBloc>().add(
                        ThemeSchemeUpdateEvent(
                            flexScheme: FlexScheme.values[index])),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: state.themeMode == ThemeMode.light
                              ? FlexThemeData.light(
                                      scheme: FlexScheme.values[index])
                                  .primaryColor
                              : FlexThemeData.dark(
                                      scheme: FlexScheme.values[index])
                                  .primaryColor,
                        ),
                        state.flexScheme == FlexScheme.values[index]
                            ? const Icon(Icons.check)
                            : const SizedBox.shrink()
                      ],
                    ));
              });
        },
      ),
    );
  }
}
