import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Screen/SignUp.dart';
import 'CleanerSignUp.dart';

class frist extends StatefulWidget {
  const frist({Key? key}) : super(key: key);

  @override
  State<frist> createState() => _fristState();
}

class _fristState extends State<frist> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("photo/11V2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 210),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                width: double.infinity,
                height: 60,
                  child: FloatingActionButton.extended(
                    label: Text('Customer Sign up',style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),), // <-- Text
                    backgroundColor: Colors.white70,
                    icon: Icon( // <-- Icon
                      Icons.person,color: Colors.black,
                      size: 24.0,
                    ),
                    onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUp();
                        },
                      ),
                    );},
                  ),
                  ),

              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                width: double.infinity,
                height: 60,
                child: FloatingActionButton.extended(
                  label: Text('Cleaner Sign up',style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),), // <-- Text
                  backgroundColor: Colors.white70,
                  icon: Icon( // <-- Icon
                    Icons.clean_hands,
                    color: Colors.black,
                    size: 24.0,
                  ),
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpdriver();
                      },
                    ),
                  );},
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
