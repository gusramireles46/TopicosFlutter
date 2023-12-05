import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:topicos2023/models/popular_model.dart';

class PopularApi {
  final url = Uri.parse('https://api.themoviedb.org/3/movie/popular?api_key=8013385aa7bf10b3b46b16239c22e22c&language=es-MX&page=1');

  Future<List<PopularModel>?> getAllPopular() async {
    var res = await http.get(url);
    if (res.statusCode == 200) {
      var jsonResult = jsonDecode(res.body)['results'] as List;
      return jsonResult.map((movie) => PopularModel.fromMap(movie)).toList();
    } else {
      return null;
    }
  }
}
