import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:projet_food/CategoriePage.dart';
import 'package:projet_food/PanierPage.dart';
import 'package:projet_food/DetailsPage.dart';
import 'package:projet_food/Classes/classProduit.dart';

class SecondePage extends StatefulWidget {
  const SecondePage({Key? key}) : super(key: key);

  @override
  State<SecondePage> createState() => _SecondePageState();
}

class _SecondePageState extends State<SecondePage> {
  int totalPanier = 0;
  bool checkbox = false;

  fonctionAddition() {
    totalPanier++;
  }

  fonctionSoustraction() {
    totalPanier--;
  }

  List<Produit> produits = [
    Produit("burger", "Burger", 7, "assets/Burger.png", false,
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
    Produit("burger", "Double Cheese", 9, "assets/Double_Cheese.png", false,
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
    Produit("burger", "Triple Cheese", 11, "assets/Triple_Cheese.png", false,
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
    Produit("burger", "Chicken Burger", 13, "assets/Burger_Poulet.png", false,
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
    Produit("pizza", "Orientale", 15, "assets/Orientale.jpg", false,
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
    Produit("pizza", "Chèvre miel", 17, "assets/Chevre_miel.jpg", false,
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
    Produit("pizza", "Chorizo", 19, "assets/Chorizo.jpg", false,
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
    Produit("pizza", "4 fromage", 21, "assets/4_fromage.jpg", false,
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
  ];
  @override
  Widget build(BuildContext context) {
    var produitSelectionner = produits.where((element) => element.valeurBool);

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
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PanierPage(
                            totalPanier: totalPanier,
                            produitSelectionner: produitSelectionner,
                          )));
            },
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
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategoriePage()));
                  },
                  child: Text('Categories'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Recettes'),
                ),
              ],
            ),
          ),
          Expanded(
            child:
                //FutureBuilder(
                //   builder: (context, snapshot) {
                //     var produits = json.decode(snapshot.data.toString());
                GridView.builder(
              itemCount: produits.length,
              itemBuilder: (BuildContext context, int index) {
                // print(produits[index]['nom'].toString());
                // var nom = produits[index]['nom'];
                // print(produits[index]['valeurBool']);
                return InkWell(
                  onTap: () {
                    var nomProduit = produits[index].nomProduit;
                    var imageProduit = produits[index].imageProduit;
                    var prix = produits[index].prix;
                    var description = produits[index].description;
                    var valeurBool = produits[index].valeurBool;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(
                                  nomProduit: nomProduit,
                                  imageProduit: imageProduit,
                                  prix: prix,
                                  description: description,
                                  valeurBool: valeurBool,
                                )));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      elevation: 2.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Image.asset(
                          //   'assets/${produits[index].imageProduit}',
                          //   height: 100,
                          // ),
                          Image(
                            image: AssetImage(
                              produits[index].imageProduit,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  produits[index].nomProduit.toString(),
                                ),
                                Text(
                                  '${produits[index].prix}' + '€',
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                '${produits[index].description}',
                                maxLines: 5,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Checkbox(
                                    value: produits[index].valeurBool,
                                    onChanged: (value) {
                                      setState(() {
                                        produits[index].valeurBool = value!;
                                      });
                                    }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 20,
                crossAxisCount: 2,
              ),
            ),
            //   },
            //   future: DefaultAssetBundle.of(context)
            //       .loadString("assets/ListeProduits.json"),
            // ),
          ),
        ],
      ),
    );
  }
}
