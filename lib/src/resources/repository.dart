import 'dart:async';

import 'package:Movie/src/models/item_model.dart';
import 'package:Movie/src/resources/movies_api_provider.dart';

class Repository {
  final moviesApiProvider = MoviesApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
}
