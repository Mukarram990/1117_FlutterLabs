import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LocationScreen extends StatefulWidget {
  LocationScreen(this.jsondata);
  final String jsondata;
  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  dynamic? temp;
  dynamic? city;
  dynamic? icon;
  @override
  void initState() {
    super.initState();
    upUi(widget.jsondata);
  }

  void upUi(dynamic weatherdata) {
    weatherdata = jsonDecode(weatherdata);
    temp = weatherdata['main']['temp'];
    city = weatherdata['name'];
    icon = weatherdata['weather'][0]['icon'];
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Location Screen'),
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(temp.toString()),
                Text(city.toString()),
                Icon(Icons.sunny),
              ],
            ),
          ),
        ));
  }
}
