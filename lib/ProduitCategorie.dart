import 'package:flutter/material.dart';
import 'package:projet_food/Classes/classCategorie.dart';
import 'package:badges/badges.dart';

class ProduitCategorie extends StatefulWidget {
  final articlePanier;
  final produitSelectionner;

  const ProduitCategorie({
    Key? key,
    this.articlePanier,
    this.produitSelectionner,
  }) : super(key: key);

  @override
  State<ProduitCategorie> createState() => _ProduitCategoriePageState();
}

class _ProduitCategoriePageState extends State<ProduitCategorie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nos Produits',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(111, 186, 255, 100),
        actions: [
          Badge(
            position: BadgePosition.topEnd(top: 5, end: 0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_basket,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            badgeContent: Text(widget.articlePanier.toString()),
            badgeColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
