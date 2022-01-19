import 'package:flutter/material.dart';

class completeTradeScreen extends StatelessWidget {
  const completeTradeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: completetradescreen(),
    );
  }
}
class completetradescreen extends StatefulWidget {
  const completetradescreen({Key? key}) : super(key: key);

  @override
  _completetradescreenState createState() => _completetradescreenState();
}

class _completetradescreenState extends State<completetradescreen> {
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
      body:
      Container(

      child: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Container(
      height: 117,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/check.png"),

        ),
      ),
    ),
    SizedBox(height: 61,),
    Container(
    width: 208,
    child: Text("Congratulations!! Your transaction Successful, you’ve recieved 0.01BTC",style: TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w400
    ),textAlign: TextAlign.center,
    ),
    )
      ]
      )
      ),
    )
    );
  }
}
