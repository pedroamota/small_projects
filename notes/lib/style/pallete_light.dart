import 'package:flutter/material.dart';
import 'pallete_style.dart';

class PaletteLight implements PaletteStyle {
  @override
  Color primary = Colors.green;

  @override
  Color accent = Colors.amber;

  @override
  Color backgroud = Colors.grey[50]!;

  @override
  Color backgroudDark = Colors.grey[400]!;

  @override
  Color error = Colors.red;

  @override
  Color primaryDark = Colors.green;

  @override
  Color secondary = Colors.grey;

  @override
  Color success = Colors.green;

  @override
  Color text = Colors.black87;

  @override
  Color textSecondary = Colors.black;

  @override
  Color warning = Colors.yellow[700]!;

  @override
  Color white = Colors.white;
}
