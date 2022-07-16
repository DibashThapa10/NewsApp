import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
        image: NetworkImage(
            'https://www.vhv.rs/dpng/d/427-4270068_gold-retro-decorative-frame-png-free-download-transparent.png'),
      ))),
    );
  }
}
