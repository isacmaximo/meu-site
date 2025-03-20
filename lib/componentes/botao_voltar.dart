import 'package:flutter/material.dart';
import 'package:meu_site/componentes/texto.dart';
import 'package:meu_site/constantes/cores.dart';

class BotaoVoltar extends StatelessWidget {
  final double tamanhoFonte;
  final void Function()? funcao;

  const BotaoVoltar({super.key, required this.tamanhoFonte, this.funcao});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: tamanhoFonte * 2,
      child: Row(
        children: [
          TextButton(
            onPressed: funcao,
            style: ButtonStyle(
              foregroundColor: WidgetStateProperty.all(corFonte),
            ),
            child: Texto(texto: 'Home', tamanho: tamanhoFonte),
          ),
        ],
      ),
    );
  }
}
