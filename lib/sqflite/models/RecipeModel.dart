class Recipe {
  late final int? recip_id;
  late String? titre;
  late String? img;
  late String? name;
  late String? description;
  late bool? favoris;
  late int? nbfavoris;

  Recipe(
    this.recip_id,
    this.titre,
    this.img,
    this.name,
    this.description,
    this.favoris,
    this.nbfavoris,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'recip_id': recip_id,
      'titre': titre,
      'img': img,
      'name': name,
      'description': description,
      'favoris': favoris,
      'nbfavoris': nbfavoris
    };

    return map;
  }

  Recipe.fromMap(Map<String, dynamic> map) {
    recip_id = map['recip_id'];
    titre = map['titre'];
    img = map['img'];
    name = map['name'];
    favoris = map['favoris'];
    nbfavoris = map['nbfavoris'];
  }
}
