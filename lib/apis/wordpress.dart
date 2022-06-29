import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:mc01/main.dart';



// String dominiourl ="https://memoriacolectiva.mapaches.info/wp-json/wp/v2/post?_embed".toString();

// Conversión de URL convencional a nuevo formato Uri


Uri dominiourl = Uri.parse("https://memoriacolectiva.mapaches.info/category/cultura-popular/wp-json/wp/v2/post?_embed");

Future<List> contenido() async{
  final response =
  await http.get(
      dominiourl,
      headers: {
        'Accept': 'aplication/json'
      });
  var convertiarjson = jsonDecode(response.body);
  return convertiarjson;
}