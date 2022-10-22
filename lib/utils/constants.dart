import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Constants {


  static const _colorScheme = ColorScheme(
    primary: Color(0xFF54c78e),
    primaryContainer: Color(0xFF117378),
    secondary: Color(0xFFEFF3F3),
    secondaryContainer: Color(0xFFFAFBFB),
    background: Color(0xFFE6EBEB),
    surface: Color(0xFFFAFBFB),
    onBackground: Colors.white,
    error: Colors.black,
    onError: Colors.black,
    onPrimary: Colors.black,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static final themeData = ThemeData(
    colorScheme: _colorScheme.copyWith(
      background: Colors.white,
    ),
    canvasColor: _colorScheme.background,
    highlightColor: Colors.transparent,
    indicatorColor: _colorScheme.onPrimary,
    scaffoldBackgroundColor: _colorScheme.background,
    secondaryHeaderColor: _colorScheme.background,
    typography: Typography.material2018(
      platform: defaultTargetPlatform,
    ),
    visualDensity: VisualDensity.standard,
    // Component themes
    appBarTheme: AppBarTheme(
      color: _colorScheme.secondary,
      iconTheme: IconThemeData(color: _colorScheme.onPrimary),
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: _colorScheme.primary,
    ),
    iconTheme:IconThemeData(color: _colorScheme.secondary),

  );
}
