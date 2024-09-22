class Actor {
  String profilePath;
  String name;
  String gender;
  String department;
  int popularity;
  List<KnownFor> knownFor; // List of KnownFor objects

  Actor({
    required this.profilePath,
    required this.name,
    required this.gender,
    required this.department,
    required this.popularity,
    required this.knownFor,
  });
}

class KnownFor {
  String movieTitle;

  KnownFor({
    required this.movieTitle,
  });
}
