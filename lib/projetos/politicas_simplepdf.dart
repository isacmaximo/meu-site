import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meu_site/componentes/botao_voltar.dart';
import 'package:meu_site/componentes/cartao.dart';
import 'package:meu_site/componentes/fundo_gradiente.dart';
import 'package:meu_site/componentes/texto.dart';
import 'package:meu_site/constantes/cores.dart';

class PoliticasSimplePdf extends StatelessWidget {
  const PoliticasSimplePdf({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          FontWeight peso = FontWeight.w300;
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
                          context.go('/simplepdf');
                        },
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
                              Center(
                                child: Texto(
                                  texto: 'Política de Privacidade - Simple PDF',
                                  tamanho: tamanhoFonte * 1.25,
                                  peso: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: espacamentoEmBaixo * 1.25),
                              Texto(
                                texto:
                                    'A sua privacidade é importante para'
                                    ' nós. Esta política de privacidade informa'
                                    ' como suas informações são tratadas ao'
                                    ' utilizar o aplicativo Simple PDF.',
                                tamanho: tamanhoFonte,
                                peso: peso,
                              ),
                              SizedBox(height: espacamentoEmBaixo),
                              Texto(
                                texto: 'Coleta de Dados',
                                tamanho: tamanhoFonte,
                                peso: FontWeight.bold,
                              ),
                              SizedBox(height: espacamentoEmBaixo),
                              Texto(
                                texto:
                                    'Informamos que o aplicativo Simple PDF não'
                                    ' coleta nenhum tipo de dado pessoal do'
                                    ' usuário. Não armazenamos informações'
                                    ' como nome, endereço de e-mail, histórico'
                                    ' de pesquisas ou qualquer outro dado '
                                    'identificável.',
                                tamanho: tamanhoFonte,
                                peso: peso,
                              ),
                              SizedBox(height: espacamentoEmBaixo),
                              Texto(
                                texto: 'Uso das Informações',
                                tamanho: tamanhoFonte,
                                peso: FontWeight.bold,
                              ),
                              SizedBox(height: espacamentoEmBaixo),
                              Texto(
                                texto:
                                    'Como não coletamos dados pessoais, '
                                    'nenhuma informação é utilizada para'
                                    ' fins de rastreamento, publicidade'
                                    ' direcionada ou qualquer outra'
                                    ' finalidade que envolva o uso de dados'
                                    ' do usuário.',
                                tamanho: tamanhoFonte,
                                peso: peso,
                              ),
                              SizedBox(height: espacamentoEmBaixo),
                              Texto(
                                texto: 'Segurança',
                                tamanho: tamanhoFonte,
                                peso: FontWeight.bold,
                              ),
                              SizedBox(height: espacamentoEmBaixo),
                              Texto(
                                texto:
                                    'Embora não coletemos dados, nos'
                                    ' comprometemos a manter o aplicativo'
                                    ' seguro e livre de vulnerabilidades.',
                                tamanho: tamanhoFonte,
                                peso: peso,
                              ),
                              SizedBox(height: espacamentoEmBaixo),
                              Texto(
                                texto: 'Alterações nesta Política',
                                tamanho: tamanhoFonte,
                                peso: FontWeight.bold,
                              ),
                              SizedBox(height: espacamentoEmBaixo),
                              Texto(
                                texto:
                                    'Esta política de privacidade pode ser'
                                    ' atualizada periodicamente. Quaisquer'
                                    ' alterações serão comunicadas nesta'
                                    ' página.',
                                tamanho: tamanhoFonte,
                                peso: peso,
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
