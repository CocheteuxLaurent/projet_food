import 'package:flutter/material.dart';

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
          'Carte',
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
          ListTile(
            title: Text(
              'Burger',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            trailing: Image.asset(
              "assets/burger-au-fromage.png",
              height: 50,
              width: 50,
            ),
          ),
        ],
      ),
    );
  }
}
