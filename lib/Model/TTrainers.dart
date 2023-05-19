class TTrainers {
  String? date;
  String? description;
  String? imageUrl;
  String? title;
  TTrainers({
    required this.date,
    required this.description,
    required this.imageUrl,
    required this.title,
  });
  TTrainers.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    description = json['description'];
    imageUrl = json['imageUrl'];
    title = json['title'];
  }
}
