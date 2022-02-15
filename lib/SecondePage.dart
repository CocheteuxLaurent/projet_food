import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:projet_food/CategoriePage.dart';
import 'package:projet_food/PanierPage.dart';
import 'package:projet_food/DetailsPage.dart';

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

  fonctionSoustraction(bool selection) {
    totalPanier--;
  }

  checkboxSelect() {
    setState(() {
      checkbox = true;
      if (checkbox != true) {}
    });
  }

  @override
  Widget build(BuildContext context) {
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PanierPage()));
            },
            icon: Icon(
              Icons.shopping_basket,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailsPage()),
          );
        },
        child: Column(
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
              child: FutureBuilder(
                builder: (context, snapshot) {
                  var produits = json.decode(snapshot.data.toString());
                  return GridView.builder(
                    itemCount: produits.length,
                    itemBuilder: (BuildContext context, int index) {
                      print(produits[index]['nom'].toString());
                      var nom = produits[index]['nom'];

                      bool test = false;
                      if (nom == "burger") {
                        test = true;
                      }
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          elevation: 2.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/${produits[index]['image']}',
                                height: 100,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      produits[index]['nom'].toString(),
                                    ),
                                    Text(
                                      '${produits[index]['prix']}' + '€',
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    '${produits[index]['desciption']}',
                                    maxLines: 5,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Checkbox(
                                        value: checkbox,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            checkbox = value!;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                    ),
                  );
                },
                future: DefaultAssetBundle.of(context)
                    .loadString("assets/ListeProduits.json"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
