import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:projet_food/sqflite/screens/welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'CategoriePage.dart';
import 'PanierPage.dart';
import 'DetailsPage.dart';
import 'RecettePage.dart';
import 'package:projet_food/class/classProduit.dart';

class SecondePage extends StatefulWidget {
  const SecondePage({Key? key}) : super(key: key);

  @override
  State<SecondePage> createState() => _SecondePageState();
}

class _SecondePageState extends State<SecondePage> {
  int totalPanier = 0;
  bool checkbox = false;
  //int qte;

  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  String? email;
  String? username;
  String? id;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserData();
  }

  //recupere les données de l'utilisateur lors du login
  void getUserData() async {
    final SharedPreferences sp = await _pref;
    setState(() {
      email = sp.getString('email');
      username = sp.getString('username');
      id = sp.getString('id');
    });
    print('email sp:' + email!);
    print('username sp: ' + username!);
    print('user_id' + id!);
  }

  fonctionAddition() {
    totalPanier++;
  }

  fonctionSoustraction() {
    totalPanier--;
  }

  List<Produit> produits = [
    Produit(
        "burger",
        "Burger",
        7,
        "assets/Burger.png",
        false,
        " trois steaks, une tranche de cheddar, bacon, salade, tomate, sauce ketchup",
        '1'),
    Produit(
        "burger",
        "Double Cheese",
        9,
        "assets/Double_Cheese.png",
        false,
        "deux steaks, deux tranches de cheddar, salade, tomate, sauce ketchup",
        '1'),
    Produit(
        "burger",
        "Triple Cheese",
        10,
        "assets/Triple_Cheese.png",
        false,
        "trois steaks, trois tranches de cheddar, salade, tomate, sauce ketchup",
        '1'),
    Produit(
        "burger",
        "Chicken Burger",
        10,
        "assets/Burger_Poulet.png",
        false,
        "un poulet paner, une tranche de cheddar, salade, tomate, sauce ketchup",
        '1'),
    Produit("burger", "Chicken Long Burger", 10, "assets/BurgerPoulet2.webp",
        false, "un poisson paner, salade, tomate, sauce moyonaisse", '1'),
    Produit("burger", "Fish Burger", 10, "assets/FishBurger.webp", false,
        "un poulet paner, salade, cheddar, tomate, sauce moyonaisse", '1'),
    Produit(
        "pizza",
        "Orientale",
        11,
        "assets/Orientale.jpg",
        false,
        "Merguez, Poivron jaune, Poivron vert, Oignons, Olives noir, Mozarella, Sauce Tomate",
        '1'),
    Produit("pizza", "Chèvre miel", 11, "assets/Chevre_miel.jpg", false,
        "Fromage de chévre, Miel, Sauce crème, Mozarella", '1'),
    Produit("pizza", "Chorizo", 12, "assets/Chorizo.jpg", false,
        "Chorizo, Mozarella, Sauce tomate", '1'),
    Produit("pizza", "4 fromage", 12, "assets/4_fromage.jpg", false,
        "Gorgonzola, Mozarrella, Tallegio, Bel paese, Sauce tomate.", '1'),
    Produit("pizza", "Jambon", 12, "assets/Pizza_Jambon.png", false,
        "Jambon, Mozarella, Sauce tomate.", '1'),
    Produit("pizza", "Margharita", 12, "assets/Pizza_Margherita.webp", false,
        "Mozarella, Sauce tomate.", '1'),
    Produit("Cookie", "cookie double pépite", 5, "assets/Cookie.webp", false,
        "Cookie pépite chocolat noir et pépite chocolat au lait", '1'),
    Produit("Cookie", "Fondant au chocolat", 5, "assets/Fondant.webp", false,
        "Fondant au chocolat noir ", '1'),
    Produit(
        "Cookie",
        "Muffin Chocolat",
        5,
        "assets/Muffin.webp",
        false,
        "Muffin moelleux au chocolat aux pépites de chocolat et au cœur coulant chocolat noisette",
        '1'),
    Produit("Cookie", "Donut Chocolat", 5, "assets/Donut.webp", false,
        "Donut parfum chocolat avec ses éclats de noisettes", '1'),
    Produit(
        "Cookie",
        "Brownie",
        5,
        "assets/Brownie.webp",
        false,
        "Brownie moelleux au chocolat sur un biscuit sablé nappé de caramel coulant",
        '1'),
    Produit("boisson", "Coca", 2, "assets/Coca.jpg", false,
        "Bouteille de coca de 50cl", '1'),
    Produit("boisson", "Coca Cherry", 2, "assets/Coca Cherry.jpg", false,
        "Bouteille de coca cherry de 50cl", '1'),
    Produit("boisson", "Ice tea", 2, "assets/Ice tea.jpg", false,
        "Bouteille de ice tea de 50cl", '1'),
    Produit("boisson", "Oasis", 2, "assets/Oasis.jpg", false,
        "Bouteille de oasis de 50cl", '1'),
    Produit("boisson", "Schweppes", 2, "assets/Schweppes.jpg", false,
        "Bouteille de schweppes de 50cl", '1'),
    Produit("boisson", "Eau", 2, "assets/eau.jpg", false,
        "Bouteille d'eau de 50cl", '1'),
  ];

  String quantiter = "1"; // variable pour la quantite rentrer

  @override
  Widget build(BuildContext context) {
    var produitSelectionner = produits.where((element) => element.valeurBool);

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () async {
            SharedPreferences sp = await _pref;
            sp.clear();
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => WelcomePage(),
              ),
              (Route<dynamic> route) => false,
            );
          },
          child: Icon(Icons.logout_outlined),
        ),
        title: Text(
          'Accueil',
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PanierPage(
                                articlePanier: produitSelectionner.length,
                                produitSelectionner: produitSelectionner,
                                quantiter: quantiter,
                              )));
                },
                icon: Icon(
                  Icons.shopping_basket,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            badgeContent: Text(totalPanier.toString()),
            badgeColor: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Bonjour',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    username.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                            builder: (context) => CategoriePage(
                                  articlePanier: produitSelectionner.length,
                                  produitSelectionner: produitSelectionner,
                                  produitList: produits,
                                )));
                  },
                  child: Text('Categories'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecettePage(
                          articlePanier: produitSelectionner.length,
                          produitSelectionner: produitSelectionner,
                          //produitList: produits,
                        ),
                      ),
                    );
                  },
                  child: Text('Recettes'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
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
                    var articlePanier = produitSelectionner.length;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(
                                  nomProduit: nomProduit,
                                  imageProduit: imageProduit,
                                  prix: prix,
                                  description: description,
                                  valeurBool: valeurBool,
                                  articlePanier: articlePanier,
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
                          Image(
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 120,
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
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${produits[index].prix}' + '€',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                '${produits[index].description}',
                                maxLines: 6,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: DropdownButtonFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.orangeAccent),
                                      ),
                                      filled: true,
                                      fillColor: Colors.orangeAccent,
                                    ),
                                    dropdownColor: Colors.orangeAccent,
                                    items: [
                                      DropdownMenuItem(
                                        value: '1',
                                        child: Text('1'),
                                      ),
                                      DropdownMenuItem(
                                        value: '2',
                                        child: Text('2'),
                                      ),
                                      DropdownMenuItem(
                                        value: '3',
                                        child: Text('3'),
                                      ),
                                      DropdownMenuItem(
                                        value: '4',
                                        child: Text('4'),
                                      ),
                                      DropdownMenuItem(
                                        value: '5',
                                        child: Text('5'),
                                      ),
                                    ],
                                    value: quantiter,
                                    onChanged: (value) {
                                      setState(() {
                                        // quantiter != value;
                                        produits[index].quantiter =
                                            value.toString();
                                      });
                                      //recuperer la valeur qui value d'ou le print
                                      print(value);
                                    },
                                  ),
                                ),
                                Checkbox(
                                    value: produits[index].valeurBool,
                                    onChanged: (value) {
                                      setState(() {
                                        produits[index].valeurBool = value!;
                                      });
                                      if (value == true) {
                                        fonctionAddition();
                                      } else {
                                        fonctionSoustraction();
                                      }
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
                mainAxisExtent: 340,
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
