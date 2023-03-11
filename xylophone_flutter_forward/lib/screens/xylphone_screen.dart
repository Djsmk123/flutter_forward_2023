import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class XyloPhone extends StatefulWidget {
  const XyloPhone({super.key});

  @override
  State<XyloPhone> createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  final AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    //creating an instance of AudioPlayer
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
            'Xylophone Meme App',
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
          itemCount: memes.length,
          itemBuilder: (context, index) {
            Map<String, String> meme = memes[index];
            // We can use [Inkwell] or [GestureDetector] or [MaterialButton] to detect the tap event.
            //difference between [Inkwell] and [GestureDetector] is that [Inkwell] has a ripple effect.
            //difference between [Inkwell] and [MaterialButton] is that [Inkwell] has a ripple effect and [MaterialButton] has a flat button.
            return InkWell(
                //Single tap event.
                onTap: () {
                  try {
                    audioPlayer.play(AssetSource(meme['audio']!));
                    setState(() {
                      isPlaying = true;
                    });
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Error'),
                      ),
                    );
                  }
                },
                // for long press event [onLongPress] property is used.
                child: memeCard(meme));
          },
        ),
        floatingActionButton: stopButton());
  }

  Visibility stopButton() {
    return Visibility(
      visible: isPlaying,
      child: FloatingActionButton(
        backgroundColor: const Color(0XFF263238),
        onPressed: () {
          if (isPlaying) {
            setState(() {
              audioPlayer.stop();
              isPlaying = false;
            });
          }
        },
        tooltip: 'Stop',
        child: const Icon(
          Icons.stop,
          color: Colors.white,
        ),
      ),
    );
  }

  Card memeCard(meme) => Card(
        elevation: 10,
        child: SizedBox(
          width: double.infinity,
          height: 100.0,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 100.0,
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(meme['image']!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      meme['title']!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
