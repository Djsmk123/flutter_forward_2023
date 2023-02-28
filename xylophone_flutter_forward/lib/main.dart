import 'package:flutter/material.dart';
import 'package:xylophone_flutter_forward/screens/xylphone_screen.dart';

//void main () is the starting point of all the flutter apps.
void main(List<String> args) {
  //runApp() is a function that takes a widget and makes it the root of the widget tree.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Xylophone',
      debugShowCheckedModeBanner: false,
      home: XyloPhone(),
    );
  }
}
