import 'package:flutter/material.dart';

class FavoritasPage extends StatefulWidget {
  const FavoritasPage({Key? key}) : super(key: key);

  @override
  State<FavoritasPage> createState() => _FavoritasPageState();
}

class _FavoritasPageState extends State<FavoritasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 6, 6),
      appBar: AppBar(
        title: Text(
          'Favoritos',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 83, 71, 108),
      ),
    );
  }
}
