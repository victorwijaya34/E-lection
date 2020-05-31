import 'dart:convert';

import 'package:http/http.dart' as http;

class Vote
{
  String pesan;

  Vote({this.pesan});

  factory Vote.createUser(Map<String, dynamic> object)
  {
    return Vote(
      pesan: object['message']
    );
  }

  static Future<Vote> connectToAPIRizal() async 
  {
    String apiURL = "https://pplumen.herokuapp.com/vote/1";

    var apiResult = await http.put(apiURL);
    var jsonObject = json.decode(apiResult.body);

    return Vote.createUser(jsonObject);
  }

  static Future<Vote> connectToAPIVictor() async 
  {
    String apiURL = "https://pplumen.herokuapp.com/vote/2";

    var apiResult = await http.put(apiURL);
    var jsonObject = json.decode(apiResult.body);

    return Vote.createUser(jsonObject);
  }
}