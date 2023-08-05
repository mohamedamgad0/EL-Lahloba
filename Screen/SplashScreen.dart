import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../new screen/Frist.dart';
import 'HomeScreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return frist();
          },
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "photo/SplashImage.jpg"),
              fit: BoxFit.cover,
            )),
        child: ListView(children: [
         SizedBox(height: 180,),
         Center(child: Image.asset(
             "photo/splashscreen.png",
         height: 250,
         width: 250,),
         ),
    SpinKitThreeInOut(
    color: const Color(0xff004aad),
    size: 30.0,

    ),
        ],),
      ),
    );
  }
}
