import 'package:flutter/material.dart';

class CategoriePage extends StatefulWidget {
  const CategoriePage({Key? key}) : super(key: key);

  @override
  State<CategoriePage> createState() => _CategoriePageState();
}

class _CategoriePageState extends State<CategoriePage> {
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
          Card(
            elevation: 5.0,
            color: Color.fromRGBO(111, 186, 255, 100),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    'Burger',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    height: 30,
                    indent: 100,
                    color: Colors.white,
                    endIndent: 100,
                  ),
                  Image.asset("assets/burger-au-fromage.png",
                      width: 40, height: 40),
                ],
              ),
            ),
          ),
          Card(
            elevation: 5.0,
            color: Color.fromRGBO(111, 186, 255, 100),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    'Burger',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    height: 30,
                    indent: 100,
                    color: Colors.white,
                    endIndent: 100,
                  ),
                  Image.asset("assets/burger-au-fromage.png",
                      width: 40, height: 40),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
