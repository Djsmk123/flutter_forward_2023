import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class XyloPhone extends StatefulWidget {
  const XyloPhone({super.key});

  @override
  State<XyloPhone> createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  @override
  Widget build(BuildContext context) {
    //creating an instance of AudioPlayer
    final AudioPlayer audioPlayer = AudioPlayer();
    //Scaffold widget that provides a default app bar, title, and a body property that holds the widget tree for the home screen.
    return Scaffold(
        backgroundColor: const Color(0XFF263238),
        //appBar widget that displays a toolbar at the top of the screen.
        appBar: AppBar(
          //backgroundColor property that sets the background color of the AppBar.
          backgroundColor: const Color(0XFF263238),
          centerTitle: true,
          toolbarHeight: 80,
          //title property that displays the title of the AppBar.
          title: const Text(
            'Xylophone App',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        //body property that holds the widget tree for the home screen.
        body: ListView.builder(
          //itemCount property that specifies the number of items in the list.
          itemCount: colors.length,
          itemBuilder: (context, index) {
            // We can use [Inkwell] or [GestureDetector] or [MaterialButton] to detect the tap event.
            //difference between [Inkwell] and [GestureDetector] is that [Inkwell] has a ripple effect.
            //difference between [Inkwell] and [MaterialButton] is that [Inkwell] has a ripple effect and [MaterialButton] has a flat button.
            return InkWell(
              //Single tap event.
              onTap: () {
                try {
                  audioPlayer.play(AssetSource('note${index + 1}.wav'));
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Error'),
                    ),
                  );
                }
              },
              // for long press event [onLongPress] property is used.
              child: Container(
                color: colors[index],
                width: double.infinity,
                height: 100.0,
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0XFF263238),
          onPressed: () {
            setState(() {
              colors.shuffle();
            });
          },
          tooltip: 'Shuffle Colors',
          child: const Icon(
            Icons.refresh,
            color: Colors.white,
          ),
        ));
  }
}
