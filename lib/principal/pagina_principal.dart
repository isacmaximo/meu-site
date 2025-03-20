import 'package:flutter/material.dart';
import 'package:meu_site/componentes/cartao_projeto.dart';
import 'package:meu_site/componentes/cartao_solucoes.dart';
import 'package:meu_site/componentes/linha_principal.dart';
import 'package:meu_site/constantes/cores.dart';
import 'package:meu_site/projetos/edu_chat_page.dart';

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
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  SizedBox(height: constraints.maxHeight * 0.1),
                  LinhaPrincipal(
                    largura: constraints.maxWidth,
                    altura: constraints.maxHeight,
                  ),
                  SizedBox(height: constraints.maxHeight * 0.05),
                  CartaoSolucoes(
                    largura: constraints.maxWidth,
                    altura: constraints.maxHeight,
                    filho: Column(
                      children: [
                        CartaoProjeto(
                          largura: constraints.maxWidth,
                          altura: constraints.maxHeight,
                          titulo: 'Edu Chat',
                          descricao:
                              'Aplicativo educacional que ajuda pessoas a encontrar'
                              ' fontes de pesquisa ou auxilia os usuários a pesquisar.'
                              ' Possui entrada de texto e Imagem (OCR) para pesquisar'
                              ' sobre um tema, e o retorno da pesquisa é um pequeno'
                              ' resumo sobre o tema, indicação de livros, indicações de'
                              ' temas para pesquisar em artigos e indicação de sites.',
                          corBotao: corEduChat1,
                          funcaoBotao: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EduChatPage(),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: constraints.maxWidth * 0.025),
                        CartaoProjeto(
                          largura: constraints.maxWidth,
                          altura: constraints.maxHeight,
                          titulo: 'Simple PDF',
                          descricao:
                              'Leitor de PDF simples, com possibilidade de tema'
                              ' escuro, mudar idioma do app, mudar número da'
                              ' página e compartilhar PDF. Ele também consegue'
                              ' ser identificado como leitor de PDF caso o'
                              ' usuário esteja no gerenciador de arquivos.',
                          corBotao: corSimplePDF1,
                          funcaoBotao: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
