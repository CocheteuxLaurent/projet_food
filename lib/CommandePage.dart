import 'package:flutter/material.dart';
import 'package:projet_food/DernierePage.dart';
import 'package:badges/badges.dart';

class CommandePage extends StatefulWidget {
  final articlePanier;
  final produitSelectionner;
  const CommandePage({Key? key, this.articlePanier, this.produitSelectionner})
      : super(key: key);

  @override
  State<CommandePage> createState() => _CommandePageState();
}

class _CommandePageState extends State<CommandePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: Text(
          'Commande',
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
      */
      appBar: AppBar(
        title: Text(
          'Commande',
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
                  'Votre Commmande',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
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
                return Card(
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          width: 100,
                          image: AssetImage(
                            widget.produitSelectionner
                                .toList()[index]
                                .imageProduit,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              widget.produitSelectionner
                                  .toList()[index]
                                  .description,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              widget.produitSelectionner
                                  .toList()[index]
                                  .nomProduit,
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.produitSelectionner
                                      .toList()[index]
                                      .prix
                                      .toString() +
                                  '€',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          /* Container(
            width: MediaQuery.of(context).size.width / 2,
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Entrer votre adresse',
              ),
              //obscureText: false,
              //controller: TextEditingController(text: 'Champ obligatoire'),
            ),
          ),
*/
          Container(
            child: Row(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Entrer votre adresse',
                  ),
                  obscureText: false,
                  //controller:
                  // TextEditingController(text: 'Champ obligatoire'),
                ),
              ],
            ),
          ),

          /*
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Entrer votre adresse',
                      ),
                      obscureText: false,
                      //controller:
                      // TextEditingController(text: 'Champ obligatoire'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Entrer votre numèro de carte',
                      ),
                      obscureText: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
          */
          /*
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Entrer votre adresse',
                      ),
                      obscureText: false,
                      //controller:
                      // TextEditingController(text: 'Champ obligatoire'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Entrer votre numèro de carte',
                      ),
                      obscureText: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
          */
          /*Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Entrer votre adresse',
              ),
              obscureText: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Entrer votre adresse',
              ),
              obscureText: true,
            ),
          ),*/
        ],
      ),
    );
  }
}
