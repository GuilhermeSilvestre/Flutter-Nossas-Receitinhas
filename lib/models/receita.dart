import 'dart:convert';

class Receita {
  Receita(
      {required this.title,
      required this.imageLink,
      required this.kcal,
      required this.recipe,
      required this.timeToMake,
      required this.fav});

  String title;
  String imageLink;
  int kcal;
  int timeToMake; // in minutes
  String recipe;
  bool fav;

  Map<String, dynamic> toJson() {
    return {
      'fav': fav,
      'title': title,
      'imageLink': imageLink,
      'kcal': kcal,
      'timeToMake': timeToMake,
      'recipe': recipe,
    };
  }

  factory Receita.fromJson(Map<String, dynamic> json) {
    return Receita(
      fav: json['fav'],
      title: json['title'],
      imageLink: json['imageLink'],
      kcal: json['kcal'],
      timeToMake: json['timeToMake'],
      recipe: json['recipe'],
    );
  }

  String toJsonString() {
    Map<String, dynamic> json = {
      'title': title,
      'imageLink': imageLink,
      'kcal': kcal,
      'timeToMake': timeToMake,
      'recipe': recipe,
      'fav': fav,
    };

    return jsonEncode(json);
  }
}
