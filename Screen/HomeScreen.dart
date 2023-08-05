import 'package:finalprogectyoutupe/components%20HomeScreen/Body.dart';
import 'package:finalprogectyoutupe/new%20screen/Connector.dart';
import 'package:flutter/material.dart';

import '../Constants.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.exit_to_app),
            color: Colors.black,
            onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return chosse(

                  );
                },
              ),
            );},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              color: Colors.black,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.production_quantity_limits_rounded),
              color: Colors.black,
              onPressed: () {},
            ),

            // automaticallyImplyLeading: false,
          ]),
      body: Body(),
    );
  }


}