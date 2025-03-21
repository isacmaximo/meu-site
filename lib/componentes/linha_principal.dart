import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          elevacao: 2,
          espacamento: EdgeInsets.all(largura * 0.02),
          filho: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                SizedBox(height: altura * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Texto(
                      texto: 'Entre em contato pelo e-mail:',
                      tamanho: tamanhoFonte2,
                      peso: peso,
                    ),
                    SizedBox(width: largura * 0.01),
                    TextButton(
                      onPressed: () async {
                        await Clipboard.setData(
                          ClipboardData(text: 'isacmaximo@gmail.com'),
                        );
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              duration: Duration(milliseconds: 850),
                              content: Texto(
                                texto:
                                    'E-mail copiado para área de transferência',
                              ),
                            ),
                          );
                        }
                      },
                      style: ButtonStyle(
                        visualDensity: VisualDensity.compact,
                        foregroundColor: WidgetStateProperty.all(corFonte),
                        textStyle: WidgetStateProperty.all(
                          TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: tamanhoFonte2,
                            fontWeight: peso,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      child: Texto(texto: 'isacmaximo@gmail.com'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      final double raioFoto = largura / 25;
      return Center(
        child: Cartao(
          elevacao: 2,
          espacamento: EdgeInsets.all(largura * 0.01),
          filho: Column(
            children: [
              //Divider(color: corFonte, thickness: 0.5, height: altura * 0.02),
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
              SizedBox(height: altura * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Texto(
                    texto: 'Entre em contato pelo e-mail:',
                    tamanho: tamanhoFonte2,
                    peso: peso,
                  ),
                  SizedBox(width: largura * 0.01),
                  TextButton(
                    onPressed: () async {
                      await Clipboard.setData(
                        ClipboardData(text: 'isacmaximo@gmail.com'),
                      );
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(milliseconds: 850),
                            content: Texto(
                              texto:
                                  'E-mail copiado para área de transferência',
                            ),
                          ),
                        );
                      }
                    },
                    style: ButtonStyle(
                      visualDensity: VisualDensity.compact,
                      foregroundColor: WidgetStateProperty.all(corFonte),
                      textStyle: WidgetStateProperty.all(
                        TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: tamanhoFonte2,
                          fontWeight: peso,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    child: Texto(texto: 'isacmaximo@gmail.com'),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
}
