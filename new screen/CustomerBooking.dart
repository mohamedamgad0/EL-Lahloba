import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocode/geocode.dart';

import 'package:latlong2/latlong.dart';

main() {
  runApp(RunApp());
}

class RunApp extends StatelessWidget {
  const RunApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: booking(),
    );
  }
}

class booking extends StatefulWidget {
  const booking({Key? key}) : super(key: key);

  @override
  State<booking> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<booking> {
  LatLng point = LatLng(49.5, -0.09);
  var location = [];

  LatLng get p => point;
  GeoCode geoCode = GeoCode();

  @override
  Widget build(BuildContext context) {
    Coordinates coordinates;
    return Stack(
      children: [
        FlutterMap(
          options: new MapOptions(
            onTap: (tapPosition, p) => {
              setState(() {
                point = p;
                print(p);
              })
            },
            center: LatLng(49.5, -0.09),
            zoom: 10.0,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c'],
            ),
            MarkerLayerOptions(markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: point,
                  builder: (ctx) => Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ))
            ])
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.location_city_rounded),
                    hintText: "Enter your address",
                    contentPadding: EdgeInsets.all(16.0),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 0, top: 40,bottom: 20),
          alignment: Alignment.bottomCenter,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.black,
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                    height: 283,
                    color: Colors.black12,
                    child: ListView(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(

                            prefixIcon: Icon(
                              Icons.location_on_sharp,
                              color: Colors.black,
                            ),
                            hintText: 'your location',
                            filled: true,
                            fillColor: Colors.white70,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(width: 1,
                                  color: Colors.white,
                                  style: BorderStyle.solid),

                            ),
                          ),

                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.price_change_rounded,
                              color: Colors.black,
                            ),
                            hintText: 'Price you offer',
                            filled: true,
                            fillColor: Colors.white70,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(width: 1, color: Colors.white70,style: BorderStyle.solid),

                            ),
                          ),

                        ),
                        SizedBox(height: 5,),
                        Container(
                          padding:
                          EdgeInsets.only(top: 40, right: 70, left: 70),
                          // color: Colors.red,
                          // width: 20,
                          //height: 30,
                          child: MaterialButton(
                            color: Colors.white70,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Confirm Order',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            },
            child: Text(
              'booking',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
