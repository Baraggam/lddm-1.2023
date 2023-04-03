import 'package:flutter/material.dart';
import 'package:primeiro_projeto/produtoModel.dart';

class Lista extends StatelessWidget {
  final ProdutoModel produtoModel;
  const Lista({Key? key, required this.produtoModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(produtoModel.nomeProduto),
      ),
      body: Column(
        children: [
          Text("Produto1"),
        ],
      ),
    );
  }
}
