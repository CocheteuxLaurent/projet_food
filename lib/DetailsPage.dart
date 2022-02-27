import 'package:flutter/material.dart';
import 'package:projet_food/Classes/classProduit.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage(
      {Key? key,
      this.nomProduit,
      this.imageProduit,
      this.prix,
      this.description,
      required this.valeurBool})
      : super(key: key);

  final nomProduit;
  final imageProduit;
  final prix;
  final description;
  bool valeurBool;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int totalPanier = 0;
  //List<Produit> produit;
  bool checkbox = false;

  fonctionAddition() {
    totalPanier++;
  }

  fonctionSoustraction(bool sel) {
    totalPanier--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Details',
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
          Center(
            child: Image.asset(widget.imageProduit.toString()),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.nomProduit,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Text(widget.description),
                        Checkbox(
                          value: widget.valeurBool,
                          onChanged: (bool value) {
                            setState(() {
                              widget.valeurBool = value;
                            });

                            if (widget.valeurBool != true) {
                              fonctionAddition();
                            } else {
                              fonctionSoustraction(checkbox);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
