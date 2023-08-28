import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.teal,
  Colors.purple,
  Colors.orange,
  Colors.deepPurple,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor>= 0, 'Selected Color must be greater than'),
        assert(selectedColor<= colorList.length, 'Selected Color must equal or less thant ${colorList.length}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
      );
}
