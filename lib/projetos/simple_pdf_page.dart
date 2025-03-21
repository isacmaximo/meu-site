import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meu_site/componentes/botao_voltar.dart';
import 'package:meu_site/componentes/cartao.dart';
import 'package:meu_site/componentes/fundo_gradiente.dart';
import 'package:meu_site/componentes/texto.dart';
import 'package:meu_site/componentes/titulo_descricao.dart';
import 'package:meu_site/constantes/cores.dart';

class SimplePdfPage extends StatelessWidget {
  const SimplePdfPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double largura = constraints.maxWidth;
          double altura = constraints.maxHeight;
          double espacamentoEmBaixo = altura * 0.02;
          double tamanhoFonte =
              largura < 750
                  ? (largura / 40)
                  : largura > 750 && largura < 1000
                  ? (largura / 60)
                  : (largura / 80);

          final double larguraCartao =
              largura < 750
                  ? largura * 0.8
                  : largura > 750 && largura < 1000
                  ? largura * 0.7
                  : largura * 0.5;

          return RawScrollbar(
            thumbVisibility: true,
            trackVisibility: true,
            thumbColor: corSimplePDF2,
            controller: scrollController,
            child: FundoGradiente(
              cores: gradienteSimplePdf,
              inicio: Alignment.topCenter,
              fim: Alignment.bottomCenter,
              filho: SingleChildScrollView(
                controller: scrollController,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BotaoVoltar(
                        tamanhoFonte: tamanhoFonte,
                        funcao: () {
                          context.go('/');
                        },
                      ),
                      Cartao(
                        largura: larguraCartao,
                        espacamento: EdgeInsets.zero,
                        filho: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image.asset('assets/simplepdf.gif'),
                        ),
                      ),
                      SizedBox(height: altura * 0.05),
                      Cartao(
                        largura: larguraCartao,
                        espacamento: EdgeInsets.all(
                          largura < 750 ? largura * 0.01 : largura * 0.02,
                        ),
                        filho: Padding(
                          padding: EdgeInsets.all(
                            largura < 750 ? largura * 0.025 : largura * 0.005,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TituloDescricao(
                                artigo: 'O ',
                                titulo: 'Simple PDF ',
                                descricao:
                                    'é um aplicativo leitor de arquivos PDF '
                                    'projetado para oferecer uma experiência'
                                    ' de leitura simples e eficiente. Com um'
                                    ' design minimalista e funcionalidades'
                                    ' essenciais, o Simple PDF permite:',
                                tamanho: tamanhoFonte,
                                espacamentoEmBaixo: espacamentoEmBaixo,
                              ),
                              TituloDescricao(
                                artigo: '\u2022 ',
                                titulo: 'Leitura Simples: ',
                                descricao:
                                    'Abra e visualize seus arquivos PDF de'
                                    ' forma rápida e fácil.',
                                tamanho: tamanhoFonte,
                                espacamentoEmBaixo: espacamentoEmBaixo,
                              ),
                              TituloDescricao(
                                artigo: '\u2022 ',
                                titulo: 'Tema Escuro: ',
                                descricao:
                                    'Ative o tema escuro para uma leitura mais'
                                    ' confortável em ambientes com pouca luz.',
                                tamanho: tamanhoFonte,
                                espacamentoEmBaixo: espacamentoEmBaixo,
                              ),
                              TituloDescricao(
                                artigo: '\u2022 ',
                                titulo: 'Mudar Idioma: ',
                                descricao:
                                    'Personalize o idioma do aplicativo de'
                                    ' acordo com sua preferência.',
                                tamanho: tamanhoFonte,
                                espacamentoEmBaixo: espacamentoEmBaixo,
                              ),
                              TituloDescricao(
                                artigo: '\u2022 ',
                                titulo: 'Navegação Simples: ',
                                descricao:
                                    'Navegue diretamente para a página'
                                    ' desejada informando o número.',
                                tamanho: tamanhoFonte,
                                espacamentoEmBaixo: espacamentoEmBaixo,
                              ),
                              TituloDescricao(
                                artigo: '\u2022 ',
                                titulo: 'Compartilhar PDF: ',
                                descricao:
                                    'Compartilhe seus arquivos PDF com outros'
                                    ' aplicativos e contatos.',
                                tamanho: tamanhoFonte,
                                espacamentoEmBaixo: espacamentoEmBaixo,
                              ),

                              Texto(
                                texto:
                                    'O Simple PDF é a solução ideal para quem'
                                    ' busca um leitor de PDF leve, rápido e'
                                    ' com as funcionalidades mais importantes'
                                    ' para o dia a dia.',
                                peso: FontWeight.w300,
                                tamanho: tamanhoFonte,
                              ),
                              SizedBox(height: espacamentoEmBaixo * 2),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: corSimplePDF1,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        context.go('/simplepdf/politicas');
                                      },
                                      style: ButtonStyle(
                                        foregroundColor:
                                            WidgetStateProperty.all(corFonte),
                                        textStyle: WidgetStateProperty.all(
                                          TextStyle(
                                            fontFamily: 'Nunito',

                                            fontSize: tamanhoFonte,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      child: Texto(
                                        texto: 'Políticas de Privacidade',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.1),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
