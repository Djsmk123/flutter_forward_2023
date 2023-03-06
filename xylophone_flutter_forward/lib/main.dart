import 'package:flutter/material.dart';

//void main () is the starting point of all the flutter apps.
void main(List<String> args) {
  //runApp() is a function that takes a widget and makes it the root of the widget tree.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Scrolling in Mobile web'),
        ),
        body: ListView.builder(
            itemCount: 100,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                width: 100,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Entry $index',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              );
            }),
      ),
      //home: XyloPhone(),
    );
  }
}
