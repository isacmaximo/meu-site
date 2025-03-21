import 'package:flutter/material.dart';
import 'package:meu_site/componentes/cartao.dart';
import 'package:meu_site/componentes/texto.dart';
import 'package:meu_site/constantes/cores.dart';

class CartaoProjeto extends StatelessWidget {
  final double largura;
  final double altura;
  final String titulo;
  final String descricao;
  final Color? corBotao;
  final void Function()? funcaoBotao;
  final String tituloBotao;
  const CartaoProjeto({
    super.key,
    required this.largura,
    required this.altura,
    required this.titulo,
    required this.descricao,
    this.corBotao,
    this.funcaoBotao,
    required this.tituloBotao,
  });

  @override
  Widget build(BuildContext context) {
    FontWeight peso = FontWeight.w300;

    final double tamanhoFonte2 =
        largura < 750
            ? (largura / 50)
            : largura > 750 && largura < 1000
            ? (largura / 75)
            : (largura / 90);

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
                Texto(texto: titulo, tamanho: tamanhoFonte2, peso: peso),
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
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextButton(
                        onPressed: funcaoBotao,

                        style: ButtonStyle(
                          foregroundColor: WidgetStateProperty.all(corFonte),
                          textStyle: WidgetStateProperty.all(
                            TextStyle(
                              fontFamily: 'Nunito',

                              fontSize: tamanhoFonte2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        child: Texto(texto: tituloBotao),
                      ),
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
