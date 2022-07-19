import 'dart:convert';

import 'package:http/http.dart';
import 'package:newsapp/model/newsmodel.dart';

class NewsService {
  String endpoint = 'https://newsapi.org/v2/everything?q=bitcoin&apiKey=42dd21edf39342bb80474f9b3efe6bb8';

  Future<List<NewsModel>> getNews() async {
    Response response = await get(Uri.parse(endpoint));
    final List result = jsonDecode(response.body)["articles"];
    return result.map(((e) => NewsModel.fromJson(e))).toList();
  }
}
