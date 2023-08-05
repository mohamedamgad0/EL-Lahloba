import 'package:finalprogectyoutupe/new%20screen/Connector.dart';
import 'package:flutter/material.dart';
import 'DetailsScreen.dart';

import 'NoNeed2.dart';

class fristhospital extends StatefulWidget {
  const fristhospital({Key? key}) : super(key: key);

  @override
  State<fristhospital> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<fristhospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.teal.shade50,
        appBar: AppBar(
            backgroundColor: Colors.teal.shade200,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.exit_to_app),
              color: Colors.white,
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
                color: Colors.white,
                onPressed: () {},
              ),

              // automaticallyImplyLeading: false,
            ]),
        body: GridView.builder(
          itemCount: ProducList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailsScreen(
                          LIST: ProducList,
                          y: index,
                        );
                      },
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(3),
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Hero(
                              tag: "${(ProducList[index].id!)}",
                              child: Container(
                                  margin: EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(ProducList[index].image!),
                                  ),
                                ),

                              )),

                        ],
                      ),
                    ),

                    Container(
                        padding: EdgeInsets.only(left: 10,top: 5),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          ProducList[index].name!,
                          style: TextStyle(fontSize:13 ,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),

                  ],
                ),
              ),
            );
          },
        ));
  }
}
