import 'package:flutter/material.dart';
import 'package:zomato/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowMaterialGrid: false, home: Login());
  }
}
