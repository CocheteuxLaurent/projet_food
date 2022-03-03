import 'package:flutter/material.dart';
import 'package:projet_food/CommandePage.dart';
import 'package:badges/badges.dart';
import 'package:projet_food/DernierePage.dart';

class PanierPage extends StatefulWidget {
  final articlePanier;
  final produitSelectionner;
  const PanierPage({Key? key, this.articlePanier, this.produitSelectionner})
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
              itemCount: widget.produitSelectionner.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Row(
                    children: [
                      Image(
                        width: 100,
                        image: AssetImage(
                          widget.produitSelectionner
                              .toList()[index]
                              .imageProduit,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            widget.produitSelectionner
                                .toList()[index]
                                .nomProduit,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CommandePage(
                                            articlePanier: widget
                                                .produitSelectionner.length,
                                            produitSelectionner:
                                                widget.produitSelectionner,
                                          )));
                            },
                            child: Text('Commander'),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
