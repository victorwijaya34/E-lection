import 'dart:convert';

import 'package:http/http.dart' as http;

class Calon
{
  String nomor;
  String npm; 
  String nama;
  String foto;
  String visi;
  String misi;
  String proker;
  String votes;

  Calon({this.nomor, this.npm, this.nama, this.foto, this.visi, this.misi, this.proker, this.votes});

  factory Calon.createUser(Map<String, dynamic> object)
  {
    return Calon(
      nomor: object['no_urut'].toString(),
      npm: object['npm'],
      nama: object['nama'],
      foto: object['foto'],
      visi: object['visi'],
      misi: object['misi'],
      proker: object['proker'],
      votes: object['votes'].toString(),
    );
  }

  static Future<Calon> connectToAPI(String id) async 
  {
    String apiURL = "https://pplumen.herokuapp.com/calon/"  + id;

    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);

    return Calon.createUser(jsonObject);
  }

}