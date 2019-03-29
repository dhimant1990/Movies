import 'dart:async';
import 'dart:convert';

import 'package:Movie/src/models/item_model.dart';
import 'package:http/http.dart' show Client;

class MoviesApiProvider {
  Client client = Client();
  final _apiKey = "63f11c373de66cb025f1e247fe88ed93";
  final _baseUrl = "http://api.themoviedb.org/3/movie";

  Future<ItemModel> fetchMovieList() async {
    print("entered");
    final response = await client.get("$_baseUrl/popular?api_key=$_apiKey");
    print(response.body.toString());
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
