import 'package:finalprogectyoutupe/new%20screen/Connector.dart';
import 'package:flutter/material.dart';

import 'CleanerSignUp.dart';
import 'CleanerScreen.dart';



class Logindriver extends StatefulWidget {
  const Logindriver({Key? key}) : super(key: key);

  @override
  State<Logindriver> createState() => _LoginState();
}
final String title = 'Hi Cleaner ! ';

class _LoginState extends State<Logindriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "photo/11V2.png"),
              fit: BoxFit.cover,
            )),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60,left: 150),
              child: Text(
                'Login',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 30),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(

                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        hintText: 'Email',
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 1, color: Colors.black,style: BorderStyle.solid),

                        ),
                      ),

                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.black,
                        ),
                        hintText: 'Password',
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(width: 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              height: 30,
              thickness: 5,
              indent: 45,
              endIndent: 45,
            ),
            Container(
              padding: EdgeInsets.only(left: 120),
              child: Text(
                'forget password ?',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 20),
              alignment: Alignment.center,
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(50)),
              // margin: EdgeInsets.only(top: 60),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MainPage(title: 'title',);
                      },
                    ),
                  );
                },
                child: Text(
                  'Sign  in',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5, left: 100),
                  child: Text(
                    "don't have account?",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 5,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpdriver();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              height: 30,
              thickness: 5,
              indent: 45,
              endIndent: 45,
            ),
          ],
        ),
      ),
    );
  }
}
