// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Profile {
  String image;
  String name;
  bool isSelected;
  Profile({
    required this.image,
    required this.name,
    this.isSelected = false,
  });

  Profile copyWith({
    String? image,
    String? name,
    bool? isSelected,
  }) {
    return Profile(
      image: image ?? this.image,
      name: name ?? this.name,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
      'isSelected': isSelected,
    };
  }

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      image: map['image'] as String,
      name: map['name'] as String,
      isSelected: map['isSelected'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Profile.fromJson(String source) => Profile.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Profile(image: $image, name: $name, isSelected: $isSelected)';

  @override
  bool operator ==(covariant Profile other) {
    if (identical(this, other)) return true;
  
    return 
      other.image == image &&
      other.name == name &&
      other.isSelected == isSelected;
  }

  @override
  int get hashCode => image.hashCode ^ name.hashCode ^ isSelected.hashCode;
}
