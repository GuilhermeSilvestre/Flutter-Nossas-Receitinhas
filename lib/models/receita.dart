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

  static fromJson(json) {}
}
