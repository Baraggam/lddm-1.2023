import 'package:flutter/material.dart';

import 'config_page.dart';
import 'favorites_page.dart';
import 'listas_page.dart';
import 'historico_page.dart';

class HomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        onPageChanged: setPaginaAtual,
        children: const [
          ListasPage(),
          FavoritasPage(),
          HistoricoPage(),
          ConfiguracaoPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        currentIndex: paginaAtual,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Listas'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq), label: 'Histórico'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Configuracao'),
        ],
        selectedItemColor: Color.fromARGB(255, 83, 71, 108),
        onTap: (pagina) {
          pc.animateToPage(pagina,
              duration: Duration(milliseconds: 400), curve: Curves.ease);
        },
      ),
    );
  }
}
