import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

//default class
class IOStutorial extends StatelessWidget {
  const IOStutorial({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F4F3),
      body: Center(
        child: Column(
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
                      side: const BorderSide(
                          color: Color(0xFF001B30), width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      'Skip tutorial',
                      style: TextStyle(color: Color(0xFF001B30)),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 15),
              child: Text(
                  "Go to your startscreen and hold anywhere until you see the Edit button on the top left of the screen",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center),
            ),
            Image(
                image: AssetImage('assets/image1.png'),
                width: MediaQuery.of(context).size.width * 0.65),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 5),
                    child: SizedBox(
                        width: 200.0, // Set the desired width
                        height: 50.0, // Set the desired height
                        //ios-styled button to navigate to the next page
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) {
                                //replace this with horse tracker screen
                                return const MyHomePage(title: 'MyHomePage');
                              }));
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                              color: Color(0xFF001B30), width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Text('Previous',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF001B30),
                            )),
                      ),),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 50),
                      child: SizedBox(
                          width: 200.0, // Set the desired width
                          height: 50.0, // Set the desired height
                          //ios-styled button to navigate to the next page
                          child: CupertinoButton(
                              color: Color(0xFF001B30),
                              //leads the user to the second page when pressed on it
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) =>
                                          const SecondRoute()),
                                );
                              },
                              child: Text('Next',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )))))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//second page
class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F4F3),
      body: Center(
        child: Column(
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
                      side: const BorderSide(
                          color: Color(0xFF001B30), width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      'Skip tutorial',
                      style: TextStyle(color: Color(0xFF001B30)),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 15),
              child: Text(
                  "Tap the Edit button. A pop-up then appears underneath it. Click on “Add Widget” ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center),
            ),
            Image(
                image: AssetImage('assets/image2.png'),
                width: MediaQuery.of(context).size.width * 0.65),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 5),
                    child: SizedBox(
                        width: 200.0, // Set the desired width
                        height: 50.0, // Set the desired height
                        //ios-styled button to navigate to the next page
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) {
                                //replace this with horse tracker screen
                                return const IOStutorial(title: 'IOStutorial');
                              }));
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                              color: Color(0xFF001B30), width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Text('Previous',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF001B30),
                            )),
                      ),),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 50),
                      child: SizedBox(
                          width: 200.0, // Set the desired width
                          height: 50.0, // Set the desired height
                          //ios-styled button to navigate to the next page
                          child: CupertinoButton(
                              color: Color(0xFF001B30),
                              //leads the user to the second page when pressed on it
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => const ThirdRoute()),
                                );
                              },
                              child: Text('Next',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )))))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//third page
class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F4F3),
      body: Center(
        child: Column(
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
                      side: const BorderSide(
                          color: Color(0xFF001B30), width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      'Skip tutorial',
                      style: TextStyle(color: Color(0xFF001B30)),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 15),
              child: Text(
                  "Type “ EI Potential” in the search bar and click on the tab “EI Potential",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center),
            ),
            Image(
                image: AssetImage('assets/image3.png'),
                height: MediaQuery.of(context).size.height * 0.45),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 5),
                    child: SizedBox(
                        width: 200.0, // Set the desired width
                        height: 50.0, // Set the desired height
                        //ios-styled button to navigate to the next page
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(context,
                                CupertinoPageRoute(builder: (context) {
                                  //replace this with horse tracker screen
                                  return const SecondRoute();
                                }));
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                color: Color(0xFF001B30), width: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: const Text('Previous',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF001B30),
                              )),
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 50),
                      child: SizedBox(
                          width: 200.0, // Set the desired width
                          height: 50.0, // Set the desired height
                          //ios-styled button to navigate to the next page
                          child: CupertinoButton(
                              color: Color(0xFF001B30),
                              //leads the user to the second page when pressed on it
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) =>
                                          const FourthRoute()),
                                );
                              },
                              child: Text('Next',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )))))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//fourth page
class FourthRoute extends StatelessWidget {
  const FourthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F4F3),
      body: Center(
        child: Column(
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
                      side: const BorderSide(
                          color: Color(0xFF001B30), width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      'Skip tutorial',
                      style: TextStyle(color: Color(0xFF001B30)),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 15),
              child: Text(
                  "Type “ EI Potential” in the search bar and click on the tab “EI Potential",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center),
            ),
            Image(
                image: AssetImage('assets/image4.png'),
                height: MediaQuery.of(context).size.height * 0.45),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 5),
                    child: SizedBox(
                        width: 200.0, // Set the desired width
                        height: 50.0, // Set the desired height
                        //ios-styled button to navigate to the next page
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(context,
                                CupertinoPageRoute(builder: (context) {
                                   return const ThirdRoute();
                                }));
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                color: Color(0xFF001B30), width: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: const Text('Previous',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF001B30),
                              )),
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 50),
                      child: SizedBox(
                          width: 200.0, // Set the desired width
                          height: 50.0, // Set the desired height
                          //ios-styled button to navigate to the next page
                          child: CupertinoButton(
                              color: Color(0xFF001B30),
                              //leads the user to the second page when pressed on it
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => const FifthRoute()),
                                );
                              },
                              child: Text('Next',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )))))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//fifth final page
class FifthRoute extends StatelessWidget {
  const FifthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F4F3),
      body: Center(
        child: Column(
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
                      side: const BorderSide(
                          color: Color(0xFF001B30), width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      'Skip tutorial',
                      style: TextStyle(color: Color(0xFF001B30)),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 15),
              child: Text(
                  "Type “ EI Potential” in the search bar and click on the tab “EI Potential",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center),
            ),
            Image(
                image: AssetImage('assets/image 5.png'),
                width: MediaQuery.of(context).size.width * 0.65),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 5),
                    child: SizedBox(
                        width: 200.0, // Set the desired width
                        height: 50.0, // Set the desired height
                        //ios-styled button to navigate to the next page
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) {
                                return const FourthRoute();
                              }));
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                              color: Color(0xFF001B30), width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Text('Previous',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF001B30),
                            )),
                      ),),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 50),
                      child: SizedBox(
                          width: 200.0, // Set the desired width
                          height: 50.0, // Set the desired height
                          //ios-styled button to navigate to the next page
                          child: CupertinoButton(
                              color: Color(0xFF001B30),
                              //leads the user to the second page when pressed on it
                              onPressed: () {
                                Navigator.push(context,
                                    CupertinoPageRoute(builder: (context) {
                                  //replace this with horse tracker screen
                                      return const MyApp();
                                }));
                              },
                              child: Text('Next',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )))))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
