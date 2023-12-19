import 'package:flutter/material.dart';
import 'pallete_dark.dart';
import 'pallete_light.dart';

class AppTheme {
  static final PaletteLight _light = PaletteLight();
  static final PaletteDark _dark = PaletteDark();

  static final ThemeData light = ThemeData.light().copyWith(
    colorScheme: ThemeData.light().colorScheme.copyWith(
          primary: _light.primary,
          secondary: _light.secondary,
          background: _light.backgroud,
          error: _light.error,
        ),
    primaryColor: _light.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: _light.primaryDark,
      titleTextStyle: TextStyle(
        color: _light.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateColor.resolveWith((states) => _light.primary),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateColor.resolveWith((states) {
        return states.contains(MaterialState.selected)
            ? _light.primary
            : _light.secondary;
      }),
      trackColor: MaterialStateColor.resolveWith((states) {
        return states.contains(MaterialState.selected)
            ? _light.primaryDark
            : _light.secondary;
      }),
    ),
  );

  static final ThemeData dark = ThemeData.dark().copyWith();
}
