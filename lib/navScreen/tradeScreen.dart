

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:jbxapp/navScreen/homePage.dart';
import 'package:jbxapp/navScreen/homepageNav/graphScreen.dart';

class tradeScreen extends StatelessWidget {
  const tradeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return tradescreen();
  }
}
class tradescreen extends StatefulWidget {
  const tradescreen({Key? key}) : super(key: key);

  @override
  _tradescreenState createState() => _tradescreenState();
}

class _tradescreenState extends State<tradescreen> {
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
      body:Container(
        padding: EdgeInsets.symmetric(horizontal: 39),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 66,),
                Container(
                  child:Text("My wallet",style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w400
                  ))
                ),
                SizedBox(height: 23,),
                Container(
                  child: Row(
                    children: [
                      Container(child:Text("Total value",style: TextStyle(
                        color: Color(0xffFFBB3B),
                          fontSize: 14,

                      ))),
                      Container(
                      child:  Icon(Icons.remove_red_eye_outlined,
                        color: Color(0xffFFBB3B),size: 20,
                      ),
                        ),

                    ],
                  ),
                ),
                SizedBox(height: 5,),
              Container(
                child: Text("0.00467 BTC",style: TextStyle(
                  color: Color(0xffFFBB3B),
                  fontSize: 28,
                  fontWeight: FontWeight.w700

                    ))),
                Container(
                child: Text("= 118.76",style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400

                    ))),
                SizedBox(height: 46,),


                Container(
                  child: Column(
                    children: [
                      Container(

                        width:MediaQuery.of(context).size.width,
                        height: 55,
                  padding: EdgeInsets.symmetric(horizontal: 9,),
                  decoration: BoxDecoration(
                        color: Color(0xff413c3c),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                        child: InkWell(
                          onTap: (){onButtonClicked("others");},
                          child: Row(

                          children: [
                            Row(

                              children: [

                              Container(
                                width:20,
                                height: 20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/bit.png"),

                                  ),
                                ),
                              ),
                            ],),
                            SizedBox(width: 9,),
                            Container(

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      child: Text("BTC",style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400

                                      ))),
                                  Container(
                                      child: Text("Bitcoin",style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 7,
                                          fontWeight: FontWeight.w400

                                      ))),
                                ],
                              ),
                            ),
                            Expanded(child: SizedBox(width: 117,)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    child: Text("14.21",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400

                                    ))),
                                Container(
                                    child: Text("0.00003BTC",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 7,
                                        fontWeight: FontWeight.w400

                                    ))),
                              ],
                            )
                          ],
                        ),
                        )
                      ),
                      SizedBox(height: 22,),

                      Container(

                          width:MediaQuery.of(context).size.width,
                          height: 55,
                          padding: EdgeInsets.symmetric(horizontal: 9,),
                          decoration: BoxDecoration(
                              color: Color(0xff413c3c),
                              borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          child: InkWell(

                            child: Row(

                              children: [
                                Row(

                                  children: [

                                    Container(
                                      width:20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/bit.png"),

                                        ),
                                      ),
                                    ),
                                  ],),
                                SizedBox(width: 9,),
                                Container(

                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          child: Text("BTC",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400

                                          ))),
                                      Container(
                                          child: Text("Bitcoin",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 7,
                                              fontWeight: FontWeight.w400

                                          ))),
                                    ],
                                  ),
                                ),
                                Expanded(child: SizedBox(width: 117,)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Text("14.21",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400

                                        ))),
                                    Container(
                                        child: Text("0.00003BTC",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 7,
                                            fontWeight: FontWeight.w400

                                        ))),
                                  ],
                                )
                              ],
                            ),
                          )
                      ),
                      SizedBox(height: 22,),
                      Container(

                          width:MediaQuery.of(context).size.width,
                          height: 55,
                          padding: EdgeInsets.symmetric(horizontal: 9,),
                          decoration: BoxDecoration(
                              color: Color(0xff413c3c),
                              borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          child: InkWell(

                            child: Row(

                              children: [
                                Row(

                                  children: [

                                    Container(
                                      width:20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/bit.png"),

                                        ),
                                      ),
                                    ),
                                  ],),
                                SizedBox(width: 9,),
                                Container(

                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          child: Text("BTC",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400

                                          ))),
                                      Container(
                                          child: Text("Bitcoin",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 7,
                                              fontWeight: FontWeight.w400

                                          ))),
                                    ],
                                  ),
                                ),
                                Expanded(child: SizedBox(width: 117,)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Text("14.21",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400

                                        ))),
                                    Container(
                                        child: Text("0.00003BTC",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 7,
                                            fontWeight: FontWeight.w400

                                        ))),
                                  ],
                                )
                              ],
                            ),
                          )
                      ),
                      SizedBox(height: 22,),
                      Container(

                          width:MediaQuery.of(context).size.width,
                          height: 55,
                          padding: EdgeInsets.symmetric(horizontal: 9,),
                          decoration: BoxDecoration(
                              color: Color(0xff413c3c),
                              borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          child: InkWell(

                            child: Row(

                              children: [
                                Row(

                                  children: [

                                    Container(
                                      width:20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/bit.png"),

                                        ),
                                      ),
                                    ),
                                  ],),
                                SizedBox(width: 9,),
                                Container(

                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          child: Text("BTC",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400

                                          ))),
                                      Container(
                                          child: Text("Bitcoin",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 7,
                                              fontWeight: FontWeight.w400

                                          ))),
                                    ],
                                  ),
                                ),
                                Expanded(child: SizedBox(width: 117,)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Text("14.21",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400

                                        ))),
                                    Container(
                                        child: Text("0.00003BTC",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 7,
                                            fontWeight: FontWeight.w400

                                        ))),
                                  ],
                                )
                              ],
                            ),
                          )
                      ),
                      SizedBox(height: 22,),

                    ],
                  ),
                )
              ],
            )
          ],
        ),
      )
    ): graphScreen();
  }
}
