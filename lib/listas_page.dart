import 'package:flutter/material.dart';
import 'package:primeiro_projeto/lista_page.dart';

import 'produtoModel.dart';

class ListasPage extends StatefulWidget {
  const ListasPage({Key? key}) : super(key: key);

  @override
  State<ListasPage> createState() => _ListasPageState();
}

class _ListasPageState extends State<ListasPage> {
  String _entrada = "";

  static List<String> _listaNome = [];

  final List<ProdutoModel> produtoData = List.generate(
      _listaNome.length,
      (index) => ProdutoModel(
            nomeProduto: '',
            precoProduto: '',
            imagemPath: '',
          ));

  @override
  void initState() {
    super.initState();
    _listaNome.add("Compras do Mês");
    _listaNome.add("Compras Escritório");
    _listaNome.add("Festa");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 6, 6),
      appBar: AppBar(
        title: Text('Minhas Listas'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 83, 71, 108),
      ),
      body: ListView.builder(
        itemCount: _listaNome.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              color: Color.fromARGB(255, 83, 71, 108),
              key: Key(_listaNome[index]),
              child: ListTile(
                title: Text(
                  _listaNome[index],
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Lista(
                            produtoModel: produtoData[index],
                          )));
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                title: Text("Criar uma nova Lista"),
                content: TextField(
                  onChanged: (String value) {
                    _entrada = value;
                  },
                ),
                actions: [
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      setState(() {
                        _listaNome.add(_entrada);
                      });
                      Navigator.of(context).pop();
                    },
                    child: Text("Criar"),
                  )
                ],
              );
            },
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
