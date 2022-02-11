import 'package:flutter/material.dart';

class CommandePage extends StatefulWidget {
  const CommandePage({Key? key}) : super(key: key);

  @override
  State<CommandePage> createState() => _CommandePageState();
}

class _CommandePageState extends State<CommandePage> {
  @override
  Widget build(BuildContext context) {
    appBar:
    AppBar(
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
    );
    return Scaffold();
  }
}
