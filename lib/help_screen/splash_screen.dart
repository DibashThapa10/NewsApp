import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/homepage/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () async {
      Navigator.pushReplacement(
          context, CupertinoPageRoute(builder: (context) => const Homepage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/news_banner.png"),
                ),
              ),
              child: Text(
                'We show news for you',
                textAlign: TextAlign.center,
                style: GoogleFonts.pacifico(fontSize: 20),
              ),
            ),
            Positioned(
              top: 450,
              left: 150,
              right: 150,
              child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const Homepage()),
                          (route) => false);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.teal,
                      ),
                    ),
                    child: const Text('Skip'),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
