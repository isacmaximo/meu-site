import 'package:flutter/material.dart';
import 'package:meu_site/componentes/cartao.dart';
import 'package:meu_site/componentes/texto.dart';
import 'package:meu_site/componentes/titulo_descricao.dart';
import 'package:meu_site/constantes/cores.dart';

class EduChatPage extends StatelessWidget {
  const EduChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Scaffold(
      appBar: AppBar(
        title: Texto(texto: 'Voltar', tamanho: 16),
        backgroundColor: Colors.transparent,
        foregroundColor: corFonte,
      ),
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

          return RawScrollbar(
            thumbVisibility: true,
            trackVisibility: true,
            thumbColor: corSimplePDF2,
            controller: scrollController,
            child: SingleChildScrollView(
              controller: scrollController,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Cartao(
                      largura: largura < 750 ? largura * 0.9 : largura * 0.5,
                      espacamento: EdgeInsets.zero,
                      filho: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset('assets/educhat.gif'),
                      ),
                    ),
                    SizedBox(height: altura * 0.05),
                    Cartao(
                      largura: largura < 750 ? largura * 0.9 : largura * 0.5,
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
                              titulo: 'Edu Chat ',
                              descricao:
                                  'é um aplicativo mobile desenvolvido para '
                                  'auxiliar estudantes e qualquer pessoa'
                                  ' interessada em aprender e pesquisar sobre'
                                  ' diversos temas. Com uma interface intuitiva'
                                  ' e moderna, o Edu Chat oferece as seguintes'
                                  ' funcionalidades:',
                              tamanho: tamanhoFonte,
                              espacamentoEmBaixo: espacamentoEmBaixo,
                            ),
                            TituloDescricao(
                              artigo: '\u2022 ',
                              titulo: 'Pesquisa por Texto: ',
                              descricao:
                                  'Basta digitar o tema desejado para receber'
                                  ' um resumo conciso, sugestões de livros,'
                                  ' artigos e sites relevantes.',
                              tamanho: tamanhoFonte,
                              espacamentoEmBaixo: espacamentoEmBaixo,
                            ),
                            TituloDescricao(
                              artigo: '\u2022 ',
                              titulo: 'Pesquisa por Imagem: ',
                              descricao:
                                  'Utilize a câmera ou a galeria do seu dispositivo para'
                                  ' escolher uma imagem com conteúdo textual, e o Edu Chat fará'
                                  ' a pesquisa por você.',
                              tamanho: tamanhoFonte,
                              espacamentoEmBaixo: espacamentoEmBaixo,
                            ),
                            TituloDescricao(
                              artigo: '\u2022 ',
                              titulo: 'Resumos Inteligentes: ',
                              descricao:
                                  'Obtenha rapidamente informações essenciais'
                                  ' sobre o tema pesquisado.',
                              tamanho: tamanhoFonte,
                              espacamentoEmBaixo: espacamentoEmBaixo,
                            ),
                            TituloDescricao(
                              artigo: '\u2022 ',
                              titulo: 'Indicação de Livros: ',
                              descricao:
                                  'Descubra obras literárias que aprofundam o'
                                  ' seu conhecimento.',
                              tamanho: tamanhoFonte,
                              espacamentoEmBaixo: espacamentoEmBaixo,
                            ),
                            TituloDescricao(
                              artigo: '\u2022 ',
                              titulo: 'Sugestões de Artigos: ',
                              descricao:
                                  'Explore artigos científicos e acadêmicos'
                                  ' para uma pesquisa mais completa.',
                              tamanho: tamanhoFonte,
                              espacamentoEmBaixo: espacamentoEmBaixo,
                            ),
                            TituloDescricao(
                              artigo: '\u2022 ',
                              titulo: 'Susgestão de sites: ',
                              descricao:
                                  'Acesse fontes online para'
                                  ' expandir seus estudos.',
                              tamanho: tamanhoFonte,
                              espacamentoEmBaixo: espacamentoEmBaixo,
                            ),
                            Texto(
                              texto:
                                  'O Edu Chat foi desenvolvido com o objetivo '
                                  'de tornar o aprendizado mais acessível e '
                                  'eficiente, fornecendo as ferramentas'
                                  ' necessárias para uma pesquisa de qualidade'
                                  ' em um único lugar.',
                              peso: FontWeight.w300,
                              tamanho: tamanhoFonte,
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
          );
        },
      ),
    );
  }
}
