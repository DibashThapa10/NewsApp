import 'package:flutter/material.dart';
import 'package:newsapp/homepage/homepage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/news_banner.png"),
                ),
              ),
              child: Text(
                'We show News For You',
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 450,
              left: 40,
              right: 40,
              child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Hompage()));
                      },
                      child: Text('Skip'))),
            )
          ],
        ),
      ),
    );
  }
}
