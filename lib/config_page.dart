import 'package:flutter/material.dart';

class ConfiguracaoPage extends StatefulWidget {
  const ConfiguracaoPage({Key? key}) : super(key: key);

  @override
  State<ConfiguracaoPage> createState() => _ConfiguracaoPage();
}

class _ConfiguracaoPage extends State<ConfiguracaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 6, 6),
      appBar: AppBar(
        title: Text('Configurações'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 83, 71, 108),
      ),
    );
  }
}
