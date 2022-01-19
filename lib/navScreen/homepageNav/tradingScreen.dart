import 'package:flutter/material.dart';
import 'package:jbxapp/navScreen/homepageNav/completeTradeScreen.dart';

class tradingScreen extends StatelessWidget {
  const tradingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home:tradingscreen() ,
    );
  }
}
class tradingscreen extends StatefulWidget {
  const tradingscreen({Key? key}) : super(key: key);

  @override
  _tradingscreenState createState() => _tradingscreenState();
}

enum SingingCharacter { Bitcoin, Ethereum }
class _tradingscreenState extends State<tradingscreen> {
  SingingCharacter? _character = SingingCharacter.Bitcoin;

  String buttonClicked = "other";

  onButtonClicked (String enterButtonClicked){
    buttonClicked = enterButtonClicked;

    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return  buttonClicked == "other"?  Scaffold(
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
            Container(
              height: 117,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bitcoin.png"),

                ),
              ),
            ),
            SizedBox(height: 103,),
            Container(
              width: 305,
              child: Text("Select the token you want to trade your Bitcoin with.", style: TextStyle(
                fontSize: 18,
                color: Colors.white
              ),),
            ),
            SizedBox(height: 51,),
            Theme(data: Theme.of(context).copyWith(
              unselectedWidgetColor:  Color(0xffFFBB3B),
              disabledColor:  Color(0xffFFBB3B),

            ), child:
            Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: const Text('JBOX', style: TextStyle(
              fontSize: 18,
                  color: Colors.white
              ),),
                    leading: Radio<SingingCharacter>(
                      fillColor: MaterialStateColor.resolveWith((states) =>  Color(0xffFFBB3B)),
                      value: SingingCharacter.Bitcoin,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Ethereum', style: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                    ),),
                    leading: Radio<SingingCharacter>(
                      fillColor: MaterialStateColor.resolveWith((states) =>  Color(0xffFFBB3B)),
                      value: SingingCharacter.Ethereum,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            )),
            SizedBox(height: 79,),
            Column(
              children: [
                InkWell(
                    onTap: (){onButtonClicked("others");},
                    child: Center(
                        child:Container(
                          width: 305,
                          height: 43,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              color: Color(0xffFFBB3B)
                          ),
                          child: Center(
                            child:  Text("Process", style: TextStyle(
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
    ): completeTradeScreen();
  }
}
