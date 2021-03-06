import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = "Location";
  Position p = Position(
      longitude: 0.0,
      latitude: 0.0,
      timestamp: DateTime(2022),
      accuracy: 0.0,
      altitude: 0.0,
      heading: 0.0,
      speed: 0.0,
      speedAccuracy: 0.0);
  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);
    p = position;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
        primary:const Color.fromARGB(255, 11, 79, 134),
        minimumSize: Size(40, 40),
      ))),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Geo Application"),
          centerTitle: true,
          backgroundColor:const Color.fromARGB(255, 11, 79, 134)
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
                Text(
                  text.toString(),
                style: TextStyle(fontSize: 25, color: Colors.red),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    getLocation();
                    text = p.toString();
                  });
                },
                child: Text("Get Location"),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
              const Text("Note: Click button two time for the first time.")
              
            ],
          ),
        ),
      ),
    );
  }
}
