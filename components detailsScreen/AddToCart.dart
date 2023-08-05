import 'package:flutter/material.dart';

import '../../../Constants.dart';
import '../Screen/Login.dart';
import '../Modle.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[

          Container(padding: EdgeInsets.only(right: 0,left:120),
            child: Expanded(
              child: SizedBox(
                height: 50,

                child: ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Login();

                      },
                    ),
                  );},
                  child: Text(
                    "Rate  Store".toUpperCase(),
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}