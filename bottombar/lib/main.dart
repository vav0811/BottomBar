import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
void main()=> runApp(BottomBar());

class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPackage(),

    );
  }
}
class MyPackage extends StatefulWidget {


  @override
  _MyPackageState createState() => _MyPackageState();
}

class _MyPackageState extends State<MyPackage> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        animationDuration: Duration(milliseconds: 200),
        selectedIndex: currentIndex,
        onItemSelected: (index){
          setState(() {
            currentIndex=index;
          });
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.teal[300],
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.account_circle_rounded),
              title: Text('My Account'),
              activeColor: Colors.purpleAccent
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.fiber_smart_record_rounded),
              title: Text('My Gold'),
              activeColor: Colors.yellow[800]
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.blue
          ),
        ],
      ) ,

    );
  }
}

