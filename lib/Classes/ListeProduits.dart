class Produits {
  late String image;
  late String nom;
  late String description;
  late int prix;
  late bool ValeurCase;

  Produits(
      String image, String nom, String description, int prix, bool ValeurCase) {
    this.image = image;
    this.nom = nom;
    this.description = description;
    this.prix = prix;
    this.ValeurCase = ValeurCase;
  }
}
