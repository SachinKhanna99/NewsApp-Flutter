import 'package:flutter/material.dart';
import 'package:news_flutter_test/screens/Authentication.dart';
import 'package:splashscreen/splashscreen.dart';

import '../color.dart';

class Splash extends StatelessWidget {
  Color color = HexColor("#13235f");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SplashScreen(
          seconds: 5,
          navigateAfterSeconds: new Authentication(),
      imageBackground: new AssetImage('assets/images/splashbg.png'),
        loaderColor: color,

      ),
    );
  }
}
