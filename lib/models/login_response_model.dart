import 'dart:convert';

LoginResponseModel loginResponseJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  LoginResponseModel({
    required this.message,
    required this.data,
  });
  late final String message;
  late final Data data;

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['msg'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final mdata = <String, dynamic>{};
    mdata['message'] = message;
    mdata['data'] = data.toJson();
    return mdata;
  }
}

class Data {
  Data({
    required this.username,
    required this.email,
    required this.date,
    required this.id,
    required this.token,
  });
  late final String username;
  late final String email;
  late final String date;
  late final String id;
  late final String token;

  Data.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    date = json['date'];
    id = json['id'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['username'] = username;
    data['email'] = email;
    data['date'] = date;
    data['id'] = id;
    data['token'] = token;
    return data;
  }
}