class Recipe {
  late final int? recip_id;
  late String? img;
  late String? name;
  late String? description;

  Recipe(
    this.recip_id,
    this.img,
    this.name,
    this.description,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'recip_id': recip_id,
      'img': img,
      'name': name,
      'description': description
    };

    return map;
  }
}
