
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jbxapp/navScreen/homepageNav/movies.dart';


class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String buttonClicked = "other";

  onButtonClicked (String enterButtonClicked){
    buttonClicked = enterButtonClicked;

setState(() {

});
  }
  @override
  Widget build(BuildContext context) {
    return  buttonClicked== "other" ? Scaffold(
      backgroundColor: Color(0xff1a1919),
      body: Column(

        children: [
          SizedBox(height: 51,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),

            child: TextField(

              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),

                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  fillColor: Color(0xffFFBB3B),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.black,

                  )
              ),
            ),
          ),
          SizedBox(height: 31,),
          Expanded(child: SingleChildScrollView(
            child:  Column(
              children: [
                //movies
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 21),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Movies", style: TextStyle(
                        fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 31,),
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width*0.9,
                        padding: EdgeInsets.all(29),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/image1.png"),
                                fit: BoxFit.fill
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 13,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: (){onButtonClicked("others");},
                            child: Text("see more >>",
                              style: TextStyle(
                                  fontSize: 14,
                                  color:  Color(0xffFFBB3B)
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 21),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Social Life", style: TextStyle(
                        fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 31,),
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width*0.9,
                        padding: EdgeInsets.all(29),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/image2.png"),
                                fit: BoxFit.fill
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 13,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(

                            child: Text("see more >>",
                              style: TextStyle(
                                  fontSize: 14,
                                  color:  Color(0xffFFBB3B)
                              ),
                            ),
                          ),
                        ],


                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 21),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Social Life", style: TextStyle(
                        fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 31,),
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width*0.9,
                        padding: EdgeInsets.all(29),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/image3.png"),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 13,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(

                            child: Text("see more >>",
                              style: TextStyle(
                                  fontSize: 14,
                                  color:  Color(0xffFFBB3B)
                              ),
                            ),
                          ),
                        ],


                      )






                    ],
                  ),
                ),
              ],
            ),)


          )

        ],
      )

    ): movieScreen();
  }
}


