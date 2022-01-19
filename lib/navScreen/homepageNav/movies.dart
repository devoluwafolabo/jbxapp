import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:jbxapp/navScreen/homePage.dart';
import 'package:jbxapp/navScreen/homepageNav/newlyUploaded.dart';

class movieScreen extends StatelessWidget {
  const movieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: moviescreeen(),
    );
  }
}
class moviescreeen extends StatefulWidget {
  const moviescreeen({Key? key}) : super(key: key);

  @override
  _moviescreeenState createState() => _moviescreeenState();
}

class _moviescreeenState extends State<moviescreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1a1919),
      appBar: AppBar(
        backgroundColor: Color(0xff1a1919),
        elevation: 0,
        leading:  IconButton(

            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> homePage()));},
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.white,
            )),



      ),
      body: Column(

        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Movies",style: TextStyle(
                  fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 28,),
                Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width*0.9,
                  padding: EdgeInsets.all(29),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/image4.png"),
                          fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white
                  ),
                ),
                SizedBox(height: 21,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 150),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: Color(0xffFFBB3B),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: Color(0xffFFBB3B).withOpacity(0.5),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: Color(0xffFFBB3B).withOpacity(0.5),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: Color(0xffFFBB3B).withOpacity(0.5),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 21,),
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

                SizedBox(height: 21,),
                Container(
                  child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Action", style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("Romanace", style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,

                    ),),
                    Text("Drama", style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,

                    ),),
                    Text("Comedy", style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,

                    ),),
                  ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),
          Expanded(
            child: SingleChildScrollView(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text("Newly Uploaded", style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ), ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [


                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 116,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    image: DecorationImage(
                                image: AssetImage("assets/images/newly1.png"),
                        fit: BoxFit.fill
                    ),


                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("Black Window", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),

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
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 116,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    image: DecorationImage(
                                image: AssetImage("assets/images/newly2.png"),
                              fit: BoxFit.fill
                          ),

                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("Free Guy", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),

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
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 116,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/newly.png"),
                                      fit: BoxFit.fill
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("Joker", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),

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

                      ],
                    ),
                  ),

                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(

                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> newlyUploaded()));},
                        child: Text("see more >>",

                          style: TextStyle(
                              fontSize: 14,
                              color:  Color(0xffFFBB3B)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text("Comedy", style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ), ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 116,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/comedy1.png"),
                                      fit: BoxFit.fill
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("Despicable Me", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),

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
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 116,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/comedy2.png"),
                                      fit: BoxFit.fill
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("SuperBad", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),

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
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 116,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/comedy3.png"),
                                      fit: BoxFit.fill
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("Alaadin", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),

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

                      ],
                    ),
                  ),

                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> movieScreen()));},
                        child: Text("see more >>",
                          style: TextStyle(
                              fontSize: 14,
                              color:  Color(0xffFFBB3B)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text("Action", style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ), ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 116,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/action1.png"),
                                      fit: BoxFit.fill
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("SpiderMan", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),

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
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 116,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/action2.png"),
                                      fit: BoxFit.fill
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("Deadpool", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),

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
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 116,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/action3.png"),
                                      fit: BoxFit.fill
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("No Time To Die", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),

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

                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> movieScreen()));},
                        child: Text("see more >>",
                          style: TextStyle(
                              fontSize: 14,
                              color:  Color(0xffFFBB3B)
                          ),
                        ),
                      ),
                    ],
                  ),
                ],


              ),
            ),
          )


        ],
      ),
    );
  }
}
