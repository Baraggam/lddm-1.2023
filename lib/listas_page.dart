import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListasPage extends StatefulWidget {
  const ListasPage({Key? key}) : super(key: key);

  @override
  State<ListasPage> createState() => _ListasPageState();
}

class _ListasPageState extends State<ListasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 67, 43, 41),
      appBar: AppBar(
        title: Text('Minhas Listas'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              color: Color.fromARGB(255, 243, 243, 33),
              child: Text(
                "Compras",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
