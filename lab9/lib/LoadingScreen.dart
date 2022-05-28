import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'LocationScreen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  dynamic? Permissions;
  dynamic? lon;
  dynamic? lat;
  void initState() {
    super.initState();
    getcurrentpositionData();
    print("init state");
  }

  void getcurrentpositionData() async {
    try {
      Permissions = Geolocator.checkPermission();
      if (Permissions == LocationPermission.denied) {
        Permissions = Geolocator.requestPermission();
        if (Permissions == LocationPermission.denied) {
          print("location cannot be accessed");
        }
      }
      Position pos = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);

      lon = pos.latitude;
      lat = pos.longitude;
      http.Response res = await http.get(Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=fdd14960acef4b7a9f5f17718a13060f'));
      dynamic jsondata = res.body;
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LocationScreen(jsondata);
      }));
    } 
    catch (e) {
      getcurrentpositionData();
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Loading Screen"),backgroundColor: Colors.red,),
      body: Container(child: SpinKitHourGlass(color: Colors.red)),
    );
  }
}
