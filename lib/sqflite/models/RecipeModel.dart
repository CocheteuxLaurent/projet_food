class Recipe {
  late final int? recip_id;
  late String? titre;
  late String? img;
  late String? nameUser;
  late String? description;
  late bool? favoris;
  late int? nbfavoris;

  Recipe(
    this.recip_id,
    this.titre,
    this.img,
    this.nameUser,
    this.description,
    this.favoris,
    this.nbfavoris,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'recip_id': recip_id,
      'titre': titre,
      'img': img,
      'nameUser': nameUser,
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
    nameUser = map['nameUser'];
    favoris = map['favoris'] == 1;
    nbfavoris = map['nbfavoris'];
  }
}
