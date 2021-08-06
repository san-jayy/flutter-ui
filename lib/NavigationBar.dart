import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List<Widget> tabs = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.purpleAccent,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.grey,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit),
                  label: "hello",
                  backgroundColor: Colors.red),
              BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit),
                  label: "hello2",
                  backgroundColor: Colors.red),
              BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit),
                  label: "hello3",
                  backgroundColor: Colors.red),
            ],
          ),
          body: tabs[_currentIndex]),
    );
  }
}
