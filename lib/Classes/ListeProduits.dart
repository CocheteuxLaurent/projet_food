class Produits {
  String image;
  String nom;
  String description;
  int prix;
  bool ValeurCase;

  Produits(
      String image, String nom, String description, int prix, bool ValeurCase) {
    this.image = image;
    this.nom = nom;
    this.description = description;
    this.prix = prix;
    this.ValeurCase = ValeurCase;
  }
}
