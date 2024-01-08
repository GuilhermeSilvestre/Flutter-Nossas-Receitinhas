import 'dart:convert';

class Receita {
  Receita(
      {required this.title,
      required this.imageLink,
      required this.kcal,
      required this.recipe,
      required this.ingredientes,
      required this.timeToMake,
      required this.fav});

  String title;
  String imageLink;
  int kcal;
  int timeToMake; // in minutes
  String recipe;
  List<String> ingredientes;
  bool fav;

  Map<String, dynamic> toJson() {
    return {
      'fav': fav,
      'title': title,
      'imageLink': imageLink,
      'kcal': kcal,
      'timeToMake': timeToMake,
      'ingredientes': ingredientes,
      'recipe': recipe,
    };
  }

  factory Receita.fromJson(Map<String, dynamic> json) {
    List<String> ingredientesList = (json['ingredientes'] as List<dynamic>?)
            ?.map((ingrediente) => ingrediente.toString())
            .toList() ??
        [];

    return Receita(
      fav: json['fav'],
      title: json['title'],
      imageLink: json['imageLink'],
      kcal: json['kcal'],
      timeToMake: json['timeToMake'],
      ingredientes: ingredientesList,
      recipe: json['recipe'],
    );
  }

  String toJsonString() {
    Map<String, dynamic> json = {
      'title': title,
      'imageLink': imageLink,
      'kcal': kcal,
      'timeToMake': timeToMake,
      'ingredientes': ingredientes,
      'recipe': recipe,
      'fav': fav,
    };

    return jsonEncode(json);
  }
}
