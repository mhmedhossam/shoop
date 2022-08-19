import 'dart:convert';

List<UserModel> userModelFromJason(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromjson(x)));

String userModelToJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    required this.fristname,
    required this.lastname,
    required this.email,
    required this.password,
  });

  String fristname;
  String lastname;
  String email;
  int password;

  factory UserModel.fromjson(Map<String, dynamic> json) => UserModel(
      fristname: json["fristname"],
      lastname: json["lastname"],
      email: json["email"],
      password: json["password"]);
  Map<String, dynamic> toJson() => {
        "fristname": fristname,
        "lastname": lastname,
        "email": email,
        "password": password
      };
}
