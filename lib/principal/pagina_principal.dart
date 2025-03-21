import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meu_site/componentes/cartao_projeto.dart';
import 'package:meu_site/componentes/cartao_solucoes.dart';
import 'package:meu_site/componentes/fundo_gradiente.dart';
import 'package:meu_site/constantes/cores.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return RawScrollbar(
            thumbVisibility: true,
            trackVisibility: true,
            controller: scrollController,
            thumbColor: corSimplePDF2,
            child: FundoGradiente(
              filho: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: constraints.maxHeight * 0.05),
                    CartaoSolucoes(
                      largura: constraints.maxWidth,
                      altura: constraints.maxHeight,
                      filho: Column(
                        children: [
                          CartaoProjeto(
                            largura: constraints.maxWidth,
                            altura: constraints.maxHeight,
                            titulo: '\u2022 Edu Chat',
                            descricao:
                                'Aplicativo educacional que ajuda pessoas a encontrar'
                                ' fontes de informação sobre um tema específico.'
                                ' Permite a pesquisa por meio de texto ou imagem'
                                ' sobre um tema, trazendo resultados como um pequeno'
                                ' resumo sobre o tema, indicação de livros, indicações de'
                                ' temas para pesquisar em artigos e indicação de sites.',
                            corBotao: corEduChat1,
                            tituloBotao: 'Conheça mais sobre o Edu Chat',
                            funcaoBotao: () {
                              context.go('/educhat');
                            },
                          ),
                          SizedBox(height: constraints.maxWidth * 0.025),
                          CartaoProjeto(
                            largura: constraints.maxWidth,
                            altura: constraints.maxHeight,
                            titulo: '\u2022 Simple PDF',
                            descricao:
                                'Leitor de PDF simples, com possibilidade de tema'
                                ' escuro, mudar idioma do app, mudar número da'
                                ' página e compartilhar PDF. Ele também consegue'
                                ' ser identificado como leitor de PDF caso o'
                                ' usuário esteja no gerenciador de arquivos.',
                            corBotao: corSimplePDF1,
                            tituloBotao: 'Conheça mais sobre o Simple PDF',
                            funcaoBotao: () {
                              context.go('/simplepdf');
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
