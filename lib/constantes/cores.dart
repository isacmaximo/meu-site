import 'package:flutter/material.dart';

const Color corPrimaria = Colors.black;
const Color corSecundaria = Colors.black87;
const Color corTercearia = Colors.black12;
const Color corSombra = Colors.white60;
const Color corFonte = Colors.white;

const Color corEduChat1 = Color.fromRGBO(83, 114, 254, 1);
const Color corEduChat2 = Color.fromRGBO(23, 29, 36, 1);

const Color corSimplePDF1 = Color.fromRGBO(163, 198, 83, 1);
const Color corSimplePDF2 = Color.fromRGBO(51, 51, 51, 1);

final List<Color> gradientePrincipal = [
  Colors.purple.shade900,
  Colors.deepPurple.shade900,
  Colors.indigo.shade900,
];
final List<Color> gradienteEduChat = [
  corEduChat1.withAlpha(255),
  corEduChat1.withAlpha(200),
  corEduChat1.withAlpha(150),
  corEduChat1.withAlpha(100),
];

final List<Color> gradienteSimplePdf = [
  corSimplePDF1.withAlpha(255),
  corSimplePDF1.withAlpha(200),
  corSimplePDF1.withAlpha(150),
  corSimplePDF1.withAlpha(100),
];
