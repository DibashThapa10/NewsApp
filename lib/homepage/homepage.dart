import 'package:flutter/material.dart';
import 'package:newsapp/model/newsmodel.dart';
import 'package:newsapp/service/newsservice.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Future<List<NewsModel>> futureData;

  @override
  void initState() {
    futureData = NewsService().getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<NewsModel>>(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                children: [
                  ...snapshot.data!.map((e) => Column(
                        children: [
                          Text(e.headline),
                          Text(e.summary),
                          Image.network(
                            e.image,
                            height: 200,
                          )
                        ],
                      )),
                ],
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            return const CircularProgressIndicator();
          }),
    );
  }
}
