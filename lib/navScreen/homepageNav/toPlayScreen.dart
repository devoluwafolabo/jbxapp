import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jbxapp/navScreen/homepageNav/miningSuccessful.dart';
import 'package:jbxapp/navScreen/homepageNav/videoScreen.dart';
import 'package:jbxapp/navScreen/tradeScreen.dart';


class toPlayScreen extends StatelessWidget {
  const toPlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: toplayscreen(),
    );
  }
}
class toplayscreen extends StatefulWidget {
  const toplayscreen({Key? key}) : super(key: key);

  @override
  _toplayscreenState createState() => _toplayscreenState();
}

class _toplayscreenState extends State<toplayscreen> {
  String buttonClicked = "other";

  onButtonClicked (String enterButtonClicked){
    buttonClicked = enterButtonClicked;

    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return  buttonClicked == "other"?  Scaffold(
      body: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 600,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/spider2.png"),
                        fit: BoxFit.cover

                      ),
                  )
                  ),

              ],

            ),



            Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 41),

                  width: MediaQuery.of(context).size.width,
              height: 436,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(60),
                  topLeft: Radius.circular(60),)
              ),
       child:

                  Column(
                      children: [

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30,),
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.star,
                                    color: Color(0xffFFBB3B),
                                    size: 20,),
                                  Icon(Icons.star,
                                    color: Color(0xffFFBB3B),size: 20,),
                                  Icon(Icons.star,
                                    color: Color(0xffFFBB3B),size: 20,),
                                  Icon(Icons.star,
                                    color: Color(0xffFFBB3B),size: 20,),
                                  Icon(Icons.star,
                                    color: Color(0xffFFBB3B),size: 20,),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              child: Text("Spiderman", style: TextStyle(
                                  fontSize: 28,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text("Drama/ Action", style: TextStyle(
                                    fontSize: 12
                                  ),),

                                ),
                                SizedBox(height: 5,),
                                Container(
                                  child: Text("2hr 30 mins", style: TextStyle(
                                      fontSize: 12
                                  ),),

                                )
                              ],
                            ),
                            SizedBox(height: 34,),
                            Container(
                              child: Text("Ornare ultricies eu, ultricies odio elementum duis ut natoque. "
                                  "Scelerisque quis vivamus scelerisque enim. Sed et eget sollicitudin sed "
                                  "aenean sodales odio adipiscing. Adipiscing eget nibh facilisis feugiat "
                                  "amet mattis sit pharetra massa. Vel nec mus sociis et in scelerisque molestie malesuada. "),
                            ),
                            SizedBox(height: 30,),
                            Container(
                              child: Text("Casts ",  style: TextStyle(
                                  fontSize: 12,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width:61,
                                  height: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(8)),
                                      color: Color(0xffFFBB3B)
                                  ),
                                ),
                                Container(
                                  width:61,
                                  height: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(8)),
                                      color: Color(0xffFFBB3B)
                                  ),
                                ),
                                Container(
                                  width:61,
                                  height: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(8)),
                                      color: Color(0xffFFBB3B)
                                  ),
                                ),
                                Container(

                                  width:61,
                                  height: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(8)),
                                    color: Color(0xffFFBB3B)
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Column(
                              children: [
                                InkWell(
                                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> miningSuccesfull()));},
                                    child: Center(
                                child:Container(
                                  width: 105,
                                  height: 43,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(8)),
                                      color: Color(0xffFFBB3B)
                                  ),
                                  child: Center(
                                      child:  Text("Back", style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),),

                                ),
                            )
                                )
                                )
                              ],
                            )

                          ],
                        )

                      ]
                  ),
            )

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 250, right: 40),

                  height: 62,
                  width: 65,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color(0xffFFBB3B),
                  ),
                  child: InkWell(
                    onTap:(){onButtonClicked("others");},
                    child:Icon(Icons.play_arrow,
                      color: Color(0xff000000),size: 20,),
    )
                ),
              ],
            ),

          ],
      ),

    ):videoScreen();
  }
}
