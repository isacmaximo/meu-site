import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  final String texto;
  final Color? cor;
  final double? tamanho;
  final FontWeight? peso;
  final TextAlign? alinhamento;
  final String? fontFamily;
  final TextDecoration? decoracao;

  const Texto({
    super.key,
    required this.texto,
    this.cor,
    this.tamanho,
    this.peso,
    this.alinhamento,
    this.fontFamily,
    this.decoracao,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      textAlign: alinhamento,
      style: TextStyle(
        color: cor,
        fontSize: tamanho,
        fontWeight: peso,
        fontFamily: fontFamily,
        decoration: decoracao,
      ),
    );
  }
}
