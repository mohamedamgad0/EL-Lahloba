import 'package:flutter/material.dart';
import 'Data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Order Screen';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Order Screen',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: MainPage(title: "Order Screen"),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Chat> items = List.of(Data.chats);
  var scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey.shade200,
    appBar: AppBar(
      title: Text('Order Screen'),
      backgroundColor: const Color(0xff004aad),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.restore),
          onPressed: () {
            setState(() {
              items = List.of(Data.chats);
            });
          },
        ),
      ],
    ),
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("photo/999.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          final item = items[index];

          return DismissibleWidget(
            item: item,
            child: buildListTile(item),
            onDismissed: (direction) =>
                dismissItem(context, index, direction),
          );
        },
      ),
    ),
  );

  void dismissItem(
      BuildContext context,
      int index,
      DismissDirection direction,
      ) {
    setState(() {
      items.removeAt(index);
    });

    switch (direction) {
      case DismissDirection.endToStart:
        Utils.showSnackBar(context, 'Chat has been deleted');
        break;
      case DismissDirection.startToEnd:
        Utils.showSnackBar(context, 'Chat has been archived');
        break;
      default:
        break;
    }
  }

  Widget buildListTile(Chat item) => Container(
    margin: EdgeInsets.only(left:8,right: 8 ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(double.infinity)
    ),
    child: Card(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        leading: CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage(item.urlAvatar),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.username,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            const SizedBox(height: 4),
            Text(
              item.message,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            Text(item.message2,
                style:
                TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
            Container(
              padding: EdgeInsets.only(right: 0, top: 0,bottom: 0),
              alignment: Alignment.bottomCenter,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                color: Colors.white70,
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(

                            decoration: BoxDecoration(

                                image: DecorationImage(
                                  image: AssetImage(
                                      "photo/Back.jpeg"),
                                  fit: BoxFit.cover,
                                )),
                        padding: EdgeInsets.only(left: 60, right: 60, top: 20),
                        height: 600,

                        child: ListView(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 90,
                                      backgroundImage:
                                      AssetImage(item.urlAvatar),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Customer: ${item.username}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Text(
                                      'Home Address: ${item.message}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Text(
                                      'Phone Number: ${item.message2}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 50,),
                                    Text(
                                      'Price: ${item.prize}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 50,),



                                  ],
                                )
                              ],
                            ),

                            MaterialButton(
                              color: Colors.white70,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              onPressed: () {

                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'Accept Offer',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),

                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text(
                  'show more info',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class Utils {
  static void showSnackBar(BuildContext context, String message) =>
      Scaffold.of(context);
}

class DismissibleWidget<T> extends StatelessWidget {
  final T item;
  final Widget child;
  final DismissDirectionCallback onDismissed;

  const DismissibleWidget({
    required this.item,
    required this.child,
    required this.onDismissed,
  });

  @override
  Widget build(BuildContext context) => Dismissible(
    key: ObjectKey(item),
    background: buildSwipeActionLeft(),
    secondaryBackground: buildSwipeActionRight(),
    child: child,
    onDismissed: onDismissed,
  );

  Widget buildSwipeActionLeft() => Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.symmetric(horizontal: 20),
    color: Colors.green,
    child: Icon(Icons.archive_sharp, color: Colors.white, size: 32),
  );

  Widget buildSwipeActionRight() => Container(
    alignment: Alignment.centerRight,
    padding: EdgeInsets.symmetric(horizontal: 20),
    color: Colors.red,
    child: Icon(Icons.delete_forever, color: Colors.white, size: 32),
  );
}
