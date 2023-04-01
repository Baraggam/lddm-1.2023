import 'package:flutter/material.dart';

class HistoricoPage extends StatefulWidget {
  const HistoricoPage({Key? key}) : super(key: key);

  @override
  State<HistoricoPage> createState() => _HistoricoPage();
}

class _HistoricoPage extends State<HistoricoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 67, 43, 41),
      appBar: AppBar(
        title: Text('Histórico'),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
