import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(selectedColor: 0).getTheme(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: FilledButton(
            child: const Text("Hola"),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
