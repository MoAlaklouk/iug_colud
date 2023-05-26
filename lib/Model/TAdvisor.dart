class TAdvisor {
  String? name;
  String? email;
  String? phone;
  String? subject;
  int? trinerNum;
  TAdvisor({
    required this.name,
    required this.email,
    required this.phone,
    required this.subject,
    required this.trinerNum,
  });
  TAdvisor.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    subject = json['subject'];
    phone = json['phone'];
    email = json['email'];
  }
}
