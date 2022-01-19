import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jbxapp/navScreen/homepageNav/movies.dart';
import 'package:jbxapp/navScreen/homepageNav/toPlayScreen.dart';


class newlyUploaded extends StatelessWidget {
  const newlyUploaded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: newlyuploaded(),
    );
  }
}
class newlyuploaded extends StatefulWidget {
  const newlyuploaded({Key? key}) : super(key: key);

  @override
  _newlyuploadedState createState() => _newlyuploadedState();
}

class _newlyuploadedState extends State<newlyuploaded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1a1919),
      appBar: AppBar(
        backgroundColor: Color(0xff1a1919),
        elevation: 0,
        leading:  IconButton(

            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> movieScreen()));},
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.white,
            )),
      ),
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
          SizedBox(height: 33,),


          Expanded(child:
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(

                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text("Newly Uploaded",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,

                          ),
                          textAlign: TextAlign.start,
                        ),



                ),
                SizedBox(height: 21,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                       child: InkWell(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              height: 190,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/black1.png"),
                                    fit: BoxFit.cover
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                         Container(
                           width: 150,
                           child:
                            Text("Black Window", style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),),
                         ),
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
                            )
                          ],
                        ),
                        ),
                      ),

                      Container(
                        child: InkWell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              height: 190,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/free1.png"),
                                    fit: BoxFit.cover
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                          Container(
                            width: 150,
                            child:
                            Text("Free Guy", style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
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
                            )
                          ],
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: InkWell(

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 150,
                                height: 190,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/joker1.png"),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                          Container(
                            width: 150,
                              child:Text("Joker", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),
                          ),
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
                              )
                            ],
                          ),
                        ),
                      ),

                      Container(
                        child: InkWell(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> toPlayScreen()));},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 150,
                                height: 190,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/spider1.png"),
                                      fit: BoxFit.fill
                                  ),
                                ),
                              ),

                              Container(
                                width: 150,
                                child: Text("SpiderMan", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),


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
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ))

        ],
      ),

    );
  }
}
