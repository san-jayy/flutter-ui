import 'package:flutter/material.dart';
import 'NavigationBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset("images/homepage.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "Podkes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
              child: Text(
                "A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                height: 50,
                width: 50,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  icon: Icon(Icons.arrow_forward),
                  color: Colors.black,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
