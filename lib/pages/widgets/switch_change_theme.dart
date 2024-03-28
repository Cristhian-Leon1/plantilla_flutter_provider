import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:plantilla_flutter/providers/theme_provider.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Switch(
      value: themeChanger.getTheme() == ThemeData.dark(),
      onChanged: (value) {
        if (value) {
          themeChanger.setTheme(ThemeData.dark());
        } else {
          themeChanger.setTheme(ThemeData.light());
        }
      },
    );
  }
}