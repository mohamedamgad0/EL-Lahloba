import 'package:flutter/material.dart';

import 'NoNeed.dart';


class DetailsScreen extends StatelessWidget {
  List LIST;
  int y;

  DetailsScreen({required this.LIST, required this.y});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.teal.shade200,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade200,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.exit_to_app_sharp),
          color: Colors.black,
          onPressed: () {Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return fristhospital(

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

        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            image: DecorationImage(
              image: AssetImage(
                  ""),
              fit: BoxFit.cover,
            )),
        child: ListView(
          children: [
            Container( margin: EdgeInsets.all(3),
              width: 200,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),


                child: Hero(
                    tag: "${(LIST[y].id!)}",


                        child: Container(
                          margin: EdgeInsets.all(3),
                          width: MediaQuery.of(context).size.width,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(LIST[y].image!),
                            ),
                          ),

                        )),
      ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Text(
                LIST[y].name!,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(

              padding: EdgeInsets.only(top: 30, left: 20),
              child: Text(
                "available hours in the day = ${LIST[y].price!} hours",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 0),
              child: Text(
                "Hospital Location :" ,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 0),
              child: Text(
                "Maadi, next to Sadat Academy" ,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 50, left: 50, top: 40),
              child: MaterialButton(
                color: Colors.teal.shade50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {},
                child: Text(
                  'Rate Hospital',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }



  
}
