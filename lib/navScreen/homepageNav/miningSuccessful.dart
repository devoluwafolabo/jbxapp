

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jbxapp/navScreen/homepageNav/graphScreen.dart';
import 'package:jbxapp/navScreen/tradeScreen.dart';

class miningSuccesfull extends StatelessWidget {
  const miningSuccesfull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: miningsucessful(),
    );
  }
}

class miningsucessful extends StatefulWidget {
  const miningsucessful({Key? key}) : super(key: key);

  @override
  _miningsucessfulState createState() => _miningsucessfulState();
}

class _miningsucessfulState extends State<miningsucessful> {
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

     child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 117,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/check.png"),

                ),
              ),
            ),
            SizedBox(height: 61,),
            Container(
              width: 255,
              child: Text("Congratulations you’ve successfully mined 10 JBX ",style: TextStyle(
                color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400
              ),textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 41,),
            Column(
              children: [
                InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> tradeScreen()));},
                    child: Center(
                        child:Container(
                          width: 255,
                          height: 43,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              color: Color(0xffFFBB3B)
                          ),
                          child: Center(
                            child:  Text("GO TO WALLET", style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),),

                          ),
                        )
                    )
                )
              ],
            )
          ],
        ),
      ),
      )
    );
  }
}
