import 'package:flutter/material.dart';
import 'package:meu_site/componentes/cartao.dart';
import 'package:meu_site/componentes/texto.dart';
import 'package:meu_site/constantes/cores.dart';

class LinhaPrincipal extends StatelessWidget {
  final double altura;
  final double largura;

  const LinhaPrincipal({
    super.key,
    required this.altura,
    required this.largura,
  });

  @override
  Widget build(BuildContext context) {
    FontWeight peso = FontWeight.w300;
    final double larguraCartao =
        largura < 750
            ? largura * 0.8
            : largura > 750 && largura < 1000
            ? largura * 0.7
            : largura * 0.5;

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

    if (largura < 700) {
      final double raioFoto = largura / 10;

      final TextAlign alinhamento = TextAlign.center;
      return Center(
        child: Cartao(
          largura: larguraCartao,
          elevacao: 2,
          espacamento: EdgeInsets.all(largura * 0.02),
          filho: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Texto(
                  texto: 'Sobre Mim',
                  tamanho: tamanhoFonte,
                  alinhamento: alinhamento,
                  peso: FontWeight.bold,
                ),
                Divider(color: corFonte, thickness: 0.5, height: altura * 0.02),
                SizedBox(height: altura * 0.02),
                CircleAvatar(
                  radius: raioFoto,
                  backgroundImage: AssetImage('assets/eu.jpeg'),
                ),
                SizedBox(height: largura * 0.02),
                Texto(
                  texto: 'Olá, sou Isac Maximo',
                  tamanho: tamanhoFonte2,
                  alinhamento: alinhamento,
                  peso: peso,
                ),
                Texto(
                  texto: 'Desenvolvedor Mobile',
                  tamanho: tamanhoFonte2,
                  alinhamento: alinhamento,
                  peso: peso,
                ),
                Texto(
                  texto: '3+ anos de experiência',
                  tamanho: tamanhoFonte2,
                  alinhamento: alinhamento,
                  peso: peso,
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      final double raioFoto = largura / 25;
      final TextAlign alinhamento = TextAlign.center;
      return Center(
        child: Cartao(
          largura: larguraCartao,
          elevacao: 2,
          espacamento: EdgeInsets.all(largura * 0.01),
          filho: Column(
            children: [
              Texto(
                texto: 'Sobre Mim',
                tamanho: tamanhoFonte,
                alinhamento: alinhamento,
                peso: FontWeight.bold,
              ),
              Divider(color: corFonte, thickness: 0.5, height: altura * 0.02),
              SizedBox(height: altura * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: raioFoto,
                    backgroundImage: AssetImage('assets/eu.jpeg'),
                  ),
                  SizedBox(width: largura * 0.05),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texto(
                        texto: 'Olá, sou Isac Maximo',
                        tamanho: tamanhoFonte2,
                        peso: peso,
                      ),

                      Texto(
                        texto: 'Desenvolvedor Mobile',
                        tamanho: tamanhoFonte2,
                        peso: peso,
                      ),
                      Texto(
                        texto: '3+ anos de experiência',
                        tamanho: tamanhoFonte2,
                        peso: peso,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: altura * 0.01),
            ],
          ),
        ),
      );
    }
  }
}
