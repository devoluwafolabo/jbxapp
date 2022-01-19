import 'package:flutter/material.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return profilescreen();
  }
}
class profilescreen extends StatefulWidget {
  const profilescreen({Key? key}) : super(key: key);

  @override
  _profilescreenState createState() => _profilescreenState();
}

class _profilescreenState extends State<profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1a1919),
      appBar: AppBar(
        backgroundColor: Color(0xff1a1919),
        elevation: 0,
        leading:  IconButton(

            onPressed: (){},
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.white,
            )),
      ),
      body: Container(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
