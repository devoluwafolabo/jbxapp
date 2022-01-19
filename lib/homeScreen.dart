

import 'package:flutter/material.dart';
import 'package:jbxapp/navScreen/homepageNav/movies.dart';
import 'package:jbxapp/navScreen/homepageNav/newlyUploaded.dart';
import 'package:jbxapp/navScreen/homepageNav/toPlayScreen.dart';
import 'package:jbxapp/navScreen/profileScreen.dart';
import 'package:jbxapp/navScreen/searchScreen.dart';
import 'package:jbxapp/navScreen/tradeScreen.dart';
import 'navScreen/homePage.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: homescreen(),
    );
  }
}
class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff1a1919),
      body: const [ homepage(),
        searchScreen(),
        tradeScreen(),
        profileScreen(),
      newlyUploaded(),
        toplayscreen(),
        movieScreen(),
      ].elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff1a1919),
        currentIndex: _currentIndex,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        onTap: ( int index){
      setState(() {
      _currentIndex = index;
      });
      },
        selectedItemColor: Color(0xffFFBB3B),
        unselectedItemColor: Color(0xffe5e5e5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(title:Text("Home"), icon: ImageIcon( AssetImage("assets/images/home.png"))),
          BottomNavigationBarItem(title:Text("Search"), icon: ImageIcon( AssetImage("assets/images/search.png"))),
          BottomNavigationBarItem(title:Text("Wallet"), icon: ImageIcon( AssetImage("assets/images/wallet.png"))),
          BottomNavigationBarItem(title:Text("profile"), icon: ImageIcon( AssetImage("assets/images/profile.png"))),
        ],
      ),
    );
  }
}
