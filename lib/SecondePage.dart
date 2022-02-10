import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projet_food/CategoriePage.dart';

class SecondePage extends StatefulWidget {
  const SecondePage({Key? key}) : super(key: key);

  @override
  State<SecondePage> createState() => _SecondePageState();
}

class _SecondePageState extends State<SecondePage> {
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
                  child: Text('Categorie'),
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
                    return test
                        ? Card(
                            margin: EdgeInsets.all(30),
                            child: Text(nom),
                          )
                        : Text('data');
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                  ),
                );
              },
              future: DefaultAssetBundle.of(context)
                  .loadString("assets/produitsJson.json"),
            ),
          ),
        ],
      ),
    );
  }
}
