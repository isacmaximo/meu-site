import 'package:flutter/material.dart';

class TituloDescricao extends StatelessWidget {
  final String artigo;
  final String titulo;
  final String descricao;
  final double tamanho;
  final double espacamentoEmBaixo;

  const TituloDescricao({
    super.key,
    required this.artigo,
    required this.titulo,
    required this.descricao,
    required this.tamanho,
    required this.espacamentoEmBaixo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          textAlign: TextAlign.justify,
          TextSpan(
            text: artigo,

            style: TextStyle(fontSize: tamanho, fontWeight: FontWeight.w300),
            children: <TextSpan>[
              TextSpan(
                text: titulo,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: tamanho,
                ),
              ),
              TextSpan(text: descricao, style: TextStyle(fontSize: tamanho)),
            ],
          ),
        ),
        SizedBox(height: espacamentoEmBaixo),
      ],
    );
  }
}
