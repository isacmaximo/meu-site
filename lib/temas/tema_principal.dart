import 'package:flutter/material.dart';
import 'package:meu_site/constantes/cores.dart';

abstract class TemaPrincipal {
  static ThemeMode get themeMode => ThemeMode.system;

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: corPrimaria,
      scaffoldBackgroundColor: corPrimaria,
      textTheme: TextTheme(
        bodyMedium: TextStyle(fontFamily: 'Nunito', color: corFonte),
      ),
    );
  }
}
