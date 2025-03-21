import 'package:flutter/material.dart';
import 'package:meu_site/componentes/cartao.dart';
import 'package:meu_site/componentes/linha_principal.dart';
import 'package:meu_site/componentes/texto.dart';

class CartaoSolucoes extends StatelessWidget {
  final double largura;
  final double altura;
  final Widget filho;
  const CartaoSolucoes({
    super.key,
    required this.largura,
    required this.altura,
    required this.filho,
  });

  @override
  Widget build(BuildContext context) {
    final TextAlign alinhamento = TextAlign.center;
    final double tamanhoFonte =
        largura < 750
            ? (largura / 40)
            : largura > 700 && largura < 1000
            ? (largura / 60)
            : (largura / 80);
    final double larguraCartao =
        largura < 750
            ? largura * 0.8
            : largura > 750 && largura < 1000
            ? largura * 0.7
            : largura * 0.5;
    return Center(
      child: Cartao(
        largura: larguraCartao,
        elevacao: 2,
        espacamento: EdgeInsets.all(largura * 0.02),
        filho: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Texto(
                texto: 'Sobre Mim',
                tamanho: tamanhoFonte,
                alinhamento: alinhamento,
                peso: FontWeight.bold,
              ),
              SizedBox(height: altura * 0.02),
              LinhaPrincipal(largura: largura, altura: altura),
              SizedBox(height: altura * 0.02),
              Texto(
                texto: 'Soluções Desenvolvidas',
                tamanho: tamanhoFonte,
                alinhamento: alinhamento,
                peso: FontWeight.bold,
              ),
              SizedBox(height: altura * 0.02),
              filho,
            ],
          ),
        ),
      ),
    );
  }
}
