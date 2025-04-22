import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

import '../main.dart';
import 'ios_tutorial.dart';

class WidgetTutorial extends StatelessWidget {
  //define methodchannel to communicate between flutter and native android
  static const platform = MethodChannel('widget');

  //send a message through the methodchannel to activate the native code
  Future<void> widgetPin() async {
    try {
      await platform.invokeMethod('showWidgetPin');
    } on PlatformException {
      print("Failed to show widget pin");
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isIOS = Theme.of(context).platform == TargetPlatform.iOS;
    bool isAndroid = Theme.of(context).platform == TargetPlatform.android;

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    const paddingText = EdgeInsets.fromLTRB(50, 5, 50, 15);

    return Scaffold(
      backgroundColor: Color(0xFFF8F4F3),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) {
                      //replace this with horse tracker screen
                      return const MyApp();
                    }));
                  },
                  style: OutlinedButton.styleFrom(
                    side:
                        const BorderSide(color: Color(0xFF001B30), width: 1.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Return',
                    style: TextStyle(color: Color(0xFF001B30), fontSize: 15),
                  ),
                ),
              )
            ],
          ),
          isAndroid
              ? Image(
                  image: AssetImage('assets/widgetandroid.png'),
                  width: screenWidth * 0.50)
              : Image(
                  image: AssetImage('assets/widget.png'),
                  width: screenWidth * 0.50),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Text("Introducing Equine Potential widgets!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center),
          ),
          Padding(
            padding: paddingText,
            child: Text(
              "Widgets basically display information of the app on the home screen of your phone, without even needing to open the app itself!",
              style: TextStyle(fontSize: 15),
              maxLines: 4,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: paddingText,
            child: Text(
                "Keep track of your training, goals, and horse just by turning on your phone. The data will automatically update the more you work on your training and horse.",
                style: TextStyle(fontSize: 15),
                maxLines: 4,
                textAlign: TextAlign.center),
          ),
          Padding(
            padding: paddingText,
            child: Text(
                "Simply select the size of the widget and paste it on your home screen wherever you want.",
                style: TextStyle(fontSize: 15),
                maxLines: 2,
                textAlign: TextAlign.center),
          ),
          SizedBox(
            width: 200.0, // Set the desired width
            height: 50.0, // Set the desired height

            //if-statement that checks if the user is on ios
            child: isIOS
                //show cupertino button when user is on ios
                ? CupertinoButton(
                    color: Color(0xFF001B30),
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) {
                        return const IOStutorial(title: 'IOStutorial');
                      }));
                    },
                    child: Text('Next',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )))
                // shows elevated button instead if user is on android
                : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF001B2F),
                    ),
                    //show widget pin when button is pressed
                    onPressed: () {
                      widgetPin();
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
          ),
        ],
      )),
    );
  }
}
