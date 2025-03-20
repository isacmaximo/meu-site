import 'package:flutter/material.dart';
import 'package:meu_site/constantes/cores.dart';

class BotaoElevado extends StatelessWidget {
  final Color? backgroundColor;
  final void Function()? funcao;
  final Widget filho;
  final double? largura;
  final double? altura;

  const BotaoElevado({
    super.key,
    this.backgroundColor,
    this.funcao,
    required this.filho,
    this.largura,
    this.altura,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: corFonte,
        minimumSize:
            largura == null && altura == null ? null : Size(largura!, altura!),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: funcao,
      child: filho,
    );
  }
}
