import 'package:flutter/widgets.dart';

class ProdutoModel extends StatelessWidget {
  final String nomeProduto;
  final String precoProduto;
  final String imagemPath;

  const ProdutoModel({
    super.key,
    required this.nomeProduto,
    required this.precoProduto,
    required this.imagemPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
