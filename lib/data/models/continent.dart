class Continent {
  Continent({
    this.id,
    this.name,
  });

  Continent.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }
  num? id;
  String? name;
  Continent copyWith({
    num? id,
    String? name,
  }) =>
      Continent(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }
}
