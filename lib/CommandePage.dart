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
                  'Finaliser votre commande',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Enter a email',
              ),
              //obscureText: true,
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
