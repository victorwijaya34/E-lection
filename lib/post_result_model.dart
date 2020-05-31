import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResult {
  String pesan;

  PostResult({this.pesan});

  factory PostResult.createPostResult(Map<String, dynamic> object)
  {
    return PostResult(
      pesan: object['message']
    );
  }

  static Future<PostResult> registerToAPI(String npm, String nama, String password, String email, String no_hp) async
  {
    String apiURL = "https://pplumen.herokuapp.com/register";

    var registerResult = await http.post(apiURL, body: {
      "npm": npm,
      "nama": nama,
      "password": password,
      "email": email,
      "no_hp": no_hp,
      "vote": false
    });

    var jsonObject = json.decode(registerResult.body);

    return PostResult.createPostResult(jsonObject);
  }

  static Future<PostResult> loginToAPI(String npm, String password) async
  {
    String apiURL = "https://pplumen.herokuapp.com/login";

    var loginResult = await http.post(apiURL, body: {
      "npm": npm,
      "password": password,
    });

    var jsonObject = json.decode(loginResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}