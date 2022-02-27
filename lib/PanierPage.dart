import 'package:flutter/material.dart';
import 'package:projet_food/CommandePage.dart';

class PanierPage extends StatefulWidget {
  final int totalPanier;
  final produitSelectionner;
  const PanierPage(
      {Key? key, required this.totalPanier, this.produitSelectionner})
      : super(key: key);

  @override
  State<PanierPage> createState() => _PanierPageState();
}

class _PanierPageState extends State<PanierPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Panier',
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
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Row(
              children: [
                Text(
                  'Votre Panier',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
                itemCount: produitSelectionner.lenght,
                itemBuilder: (BuildContext context, int index) {}),
          ),
        ],
      ),
    );
  }
}
