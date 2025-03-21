import 'package:go_router/go_router.dart';
import 'package:meu_site/principal/pagina_principal.dart';
import 'package:meu_site/projetos/edu_chat_page.dart';
import 'package:meu_site/projetos/politicas_educhat.dart';
import 'package:meu_site/projetos/politicas_simplepdf.dart';
import 'package:meu_site/projetos/simple_pdf_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return PaginaPrincipal();
      },
    ),
    GoRoute(
      path: '/educhat',
      builder: (context, state) {
        return EduChatPage();
      },
    ),
    GoRoute(
      path: '/educhat/politicas',
      builder: (context, state) {
        return PoliticasEduChat();
      },
    ),
    GoRoute(
      path: '/simplepdf',
      builder: (context, state) {
        return SimplePdfPage();
      },
    ),
    GoRoute(
      path: '/simplepdf/politicas',
      builder: (context, state) {
        return PoliticasSimplePdf();
      },
    ),
  ],
);
