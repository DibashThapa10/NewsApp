import 'dart:convert';

import 'package:http/http.dart';
import 'package:newsapp/model/newsmodel.dart';

class NewsService {
  String endpoint = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<NewsModel>> getNews() async {
    Response response = await get(Uri.parse(endpoint));
    final List result = jsonDecode(response.body);
    return result.map(((e) => NewsModel.fromJson(e))).toList();
  }
}
