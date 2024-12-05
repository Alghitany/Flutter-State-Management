class Character {
  Character({
      this.id, 
      this.firstName, 
      this.lastName, 
      this.fullName, 
      this.title, 
      this.family, 
      this.image, 
      this.imageUrl,});

  Character.fromJson(Map<String,dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    fullName = json['fullName'];
    title = json['title'];
    family = json['family'];
    image = json['image'];
    imageUrl = json['imageUrl'];
  }
  num? id;
  String? firstName;
  String? lastName;
  String? fullName;
  String? title;
  String? family;
  String? image;
  String? imageUrl;
Character copyWith({  num? id,
  String? firstName,
  String? lastName,
  String? fullName,
  String? title,
  String? family,
  String? image,
  String? imageUrl,
}) => Character(  id: id ?? this.id,
  firstName: firstName ?? this.firstName,
  lastName: lastName ?? this.lastName,
  fullName: fullName ?? this.fullName,
  title: title ?? this.title,
  family: family ?? this.family,
  image: image ?? this.image,
  imageUrl: imageUrl ?? this.imageUrl,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['fullName'] = fullName;
    map['title'] = title;
    map['family'] = family;
    map['image'] = image;
    map['imageUrl'] = imageUrl;
    return map;
  }

}