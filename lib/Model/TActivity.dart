class TActivity {
  String? title;
  String? user;
  DateTime? time;
  String? description;

  TActivity({
    this.title,
    this.user,
    this.time,
    this.description,
  });

  TActivity.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    user = json['user'];
    time = json['time'];
    description = json['description'];
  }
}
