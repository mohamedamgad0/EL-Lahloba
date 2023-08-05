import 'package:flutter/material.dart';

import '../Screen/ScreenDetails.dart';
import '../Constants.dart';
import '../Modle.dart';
class ItemCard extends StatelessWidget {
  final Product product;


  const ItemCard({
    Key? key,
    required this.product,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

      return GestureDetector(
        onTap:(){ Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailsScreen(product: product);

            },
          ),
        );},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,


                borderRadius: BorderRadius.circular(15),
              ),
              child: Hero(
                  tag: "${product.id}",
                  child: Container(
                      child: Container(
                        margin: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(product.image),
                          ),
                        ),

                      )),
            ),),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  product.title,
                  style:
                  TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),

          ],
        ),
      );

    }
  }
