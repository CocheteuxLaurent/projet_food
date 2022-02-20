import 'package:flutter/material.dart';
import 'package:projet_food/Classes/classProduit.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    Key? key,
    required this.nomProduit,
    required this.imageProduit,
    required this.prix,
    required this.description,
  }) : super(key: key);

  final nomProduit;
  final imageProduit;
  final prix;
  final description;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
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
          Image(
            image: AssetImage(widget.imageProduit),
          ),
        ],
      ),
    );
  }
}
