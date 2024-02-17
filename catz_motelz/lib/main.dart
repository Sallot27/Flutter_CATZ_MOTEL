import 'package:catz_motelz/Screens/Catz_Details.dart';
import 'package:catz_motelz/Screens/Catz_Main_Screen.dart';
import 'package:flutter/material.dart';
import 'package:catz_motelz/Data/Catz.dart';
import 'package:catz_motelz/Model/Cat.dart';

final cats =
    allCat.map<Cattz>((jsonCattz) => Cattz.fromJson(jsonCattz)).toList();

void main() {
  final listOfCatsAsJson = allCat;
  final listOfCatsAsObjects = <Cattz>[];
  for (var i = 0; i < listOfCatsAsJson.length; i++) {
    final catAsJson = listOfCatsAsJson[i];
    final catAsObject = Cattz.fromJson(catAsJson);
    listOfCatsAsObjects.add(catAsObject);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatzMainScreen(),
    );
  }
}
