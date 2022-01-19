import 'package:flutter/material.dart';
import 'package:jbxapp/navScreen/homePage.dart';
import 'package:jbxapp/navScreen/homepageNav/completeTradeScreen.dart';
import 'package:jbxapp/navScreen/homepageNav/tradingScreen.dart';

class graphScreen extends StatelessWidget {
  const graphScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: graphscreen(),
    );
  }
}
class graphscreen extends StatefulWidget {
  const graphscreen({Key? key}) : super(key: key);

  @override
  _graphscreenState createState() => _graphscreenState();
}

class _graphscreenState extends State<graphscreen> {
  String buttonClicked = "other";

  onButtonClicked (String enterButtonClicked){
    buttonClicked = enterButtonClicked;

    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return  buttonClicked == "other"? Scaffold(
      backgroundColor: Color(0xff1a1919),
      appBar: AppBar(
        backgroundColor: Color(0xff1a1919),
        elevation: 0,
        leading:  IconButton(

            onPressed:  (){Navigator.push(context, MaterialPageRoute(builder: (context)=> homePage()));},
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.white,
            )),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(

              height: 79,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bitcoin.png"),

                ),
              ),
            ),
            SizedBox(height: 22,),
            Container(
              child: Text("0.000467 BTC", style: TextStyle(
                fontSize: 28,
                  color: Color(0xffFFBB3B)
              ),),
            ),
            SizedBox(height: 15,),
            Container(
              child: Text("BTC wallet",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white
                ),
            )
            ),
            SizedBox(height: 9,),
            Container(

              height: 198,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/graph.png"),

                ),
              ),
            ),
            SizedBox(height: 31,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),

              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(

                      width: 36,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color(0xffFFBB3B)
                      ),
                      child: InkWell(
                        onTap: (){},
                        child: Center(
                          child: Text("24h"),
                        ),
                      )
                  ),
                  Container(

                      width: 36,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.white
                      ),
                      child: InkWell(
                        onTap: (){},
                        child: Center(
                          child: Text("24h"),
                        ),
                      )
                  ),
                  Container(

                      width: 36,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.white
                      ),
                      child: InkWell(
                        onTap: (){},
                        child: Center(
                          child: Text("24h"),
                        ),
                      )
                  ),
                  Container(

                      width: 36,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.white
                      ),
                      child: InkWell(
                        onTap: (){},
                        child: Center(
                          child: Text("24h"),
                        ),
                      )
                  ),
                  Container(

                      width: 36,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.white
                      ),
                      child: InkWell(
                        onTap: (){},
                        child: Center(
                          child: Text("24h"),
                        ),
                      )
                  ),

                ],
              ),
            ),
            SizedBox(height: 51,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      width: 74,
                      height: 43,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.white
                      ),
                      child: InkWell(
                        onTap: (){},
                        child: Center(
                          child: Text("BUY"),
                        ),
                      )
                  ),
                  Container(
                      width: 105,
                      height: 43,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color(0xffFFBB3B)
                      ),
                      child: InkWell(
                        onTap: (){onButtonClicked("others");},
                        child: Center(
                          child: Text("TRADE"),
                        ),
                      )
                  ),

                ],
              ),)

          ],
        ),
      ),
    ): tradingScreen();
  }
}
