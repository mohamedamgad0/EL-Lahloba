import 'package:finalprogectyoutupe/new%20screen/CustomerBooking.dart';
import 'package:flutter/material.dart';

import '../Screen/HomeScreen.dart';
import 'CleanerSignUp.dart';
import 'NoNeed.dart';

class chosse extends StatefulWidget {
  const chosse({Key? key}) : super(key: key);

  @override
  State<chosse> createState() => _chosseState();
}


class _chosseState extends State<chosse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("photo/11V2.png"),
          fit: BoxFit.cover,
        )),
        child: ListView(
          children: [

            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("photo/driver12.png"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50, top:10,bottom: 10),
              alignment: Alignment.center,
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)),
              child: Container(
                margin: EdgeInsets.only(left: 8, right: 8, top: 8,bottom: 8),
                alignment: Alignment.center,

                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.lightBlue.shade900,
                    borderRadius: BorderRadius.circular(30)),
                // margin: EdgeInsets.only(top: 60),

                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return booking();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Driver',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
