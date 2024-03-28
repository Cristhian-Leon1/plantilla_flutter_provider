import 'package:flutter/material.dart';
import 'package:plantilla_flutter/pages/home/home.dart';
import 'package:plantilla_flutter/providers/theme_provider.dart';
import 'package:plantilla_flutter/utils/custom_themes.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeData.light()),
      child: const MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  const MaterialAppWithTheme({super.key});
  @override
  Widget build(BuildContext context) {

    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.getTheme(),
      home: const HomePage(),
    );
  }
}
