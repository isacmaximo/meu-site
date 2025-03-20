import 'package:flutter/material.dart';
import 'package:meu_site/componentes/botao_elevado.dart';
import 'package:meu_site/componentes/cartao.dart';
import 'package:meu_site/componentes/texto.dart';

class CartaoProjeto extends StatelessWidget {
  final double largura;
  final double altura;
  final String titulo;
  final String descricao;
  final Color? corBotao;
  final void Function()? funcaoBotao;
  const CartaoProjeto({
    super.key,
    required this.largura,
    required this.altura,
    required this.titulo,
    required this.descricao,
    this.corBotao,
    this.funcaoBotao,
  });

  @override
  Widget build(BuildContext context) {
    FontWeight peso = FontWeight.w300;
    final double tamanhoFonte =
        largura < 750
            ? (largura / 40)
            : largura > 700 && largura < 1000
            ? (largura / 60)
            : (largura / 80);
    final double tamanhoFonte2 =
        largura < 750
            ? (largura / 50)
            : largura > 750 && largura < 1000
            ? (largura / 75)
            : (largura / 90);
    final Size tamanhoBotao =
        largura < 750
            ? Size(largura * 0.25, altura * 0.04)
            : largura > 750 && largura < 1000
            ? (Size(largura * 0.2, altura * 0.05))
            : (Size(largura * 0.15, altura * 0.06));
    return Center(
      child: Cartao(
        elevacao: 2,
        espacamento: EdgeInsets.all(largura * 0.01),
        filho: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Texto(
                  texto: titulo,
                  tamanho: tamanhoFonte,
                  peso: FontWeight.bold,
                ),
                SizedBox(height: altura * 0.01),
                Texto(
                  texto: descricao,
                  tamanho: tamanhoFonte2,
                  peso: peso,
                  alinhamento: TextAlign.justify,
                ),
                SizedBox(height: altura * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BotaoElevado(
                      backgroundColor: corBotao,
                      funcao: funcaoBotao,
                      filho: Texto(
                        texto: 'Conheça mais sobre $titulo',
                        peso: FontWeight.bold,
                        tamanho: tamanhoFonte2,
                      ),
                      largura: tamanhoBotao.width,
                      altura: tamanhoBotao.height,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
