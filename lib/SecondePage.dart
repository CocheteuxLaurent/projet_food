import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projet_food/Classes/ListeProduits.dart';

class SecondePage extends StatefulWidget {
  const SecondePage({Key? key}) : super(key: key);

  @override
  State<SecondePage> createState() => _SecondePageState();
}

class _SecondePageState extends State<SecondePage> {
  @override
  Widget build(BuildContext context) {
    List<Produits> produits = [
      Produits("assets/Burger.jpg", "Burger", "description 1", 10, false),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Accueil',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(111, 186, 255, 100),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_basket,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Row(
              children: [
                Text(
                  'Nos Suggestions',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
