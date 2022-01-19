import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jbxapp/homeScreen.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: Login(),
    );


  }
}
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/background.png")
                        ),
                        color: Color(0xff1a1919)
                    ),

                    child: Column(

                      children: [

                        Expanded(

                              child: Container(

                                width: double.infinity,
                                padding: EdgeInsets.all(32),

                                child:  Column(
                                  children: [
                                    Container(

                                    child:Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 100,
                                      margin: EdgeInsets.only(top: 100),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/logo1.png")
                                        )
                                      ),
                                    ),

                                      ),
                                    SizedBox(height: 130,),
                                    Text("Let’s sign you in.",
                                      style: TextStyle(fontSize: 29,
                                          color: Colors.white),

                                    ),
                                    SizedBox(height: 38,),
                                    TextField(
                                      decoration: InputDecoration(
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10))
                                          ),
                                          fillColor: Color(0xffC6C8C8).withOpacity(0.2),
                                          hintText: "Email Address",
                                          hintStyle: TextStyle(
                                              color: Colors.white,

                                          )
                                      ),
                                    ),

                                    SizedBox(height: 21,),
                                    TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(

                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10))
                                          ),
                                          fillColor: Color(0xffC6C8C8).withOpacity(0.2),
                                          hintText: "Password",
                                          hintStyle: TextStyle(
                                              color: Colors.white
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 30,),
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> homeScreen()));
                                      },

                                      child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 43,
                                          decoration: BoxDecoration(
                                              color: Color(0xffFFBB3B),
                                              borderRadius: BorderRadius.all(Radius.circular(10))
                                          ),
                                          child: Center(
                                            child:  Text(
                                              "LOGIN", style: TextStyle(
                                                fontSize: 9
                                            ),
                                            ),
                                          )

                                      ),
                                    ),
                                    SizedBox(height: 70,),
                                    InkWell(
                                      child: Column(
                                        children: [
                                          Text("Don’t have an account?", style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white
                                          ),

                                          ),
                                          Text("Create account", style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )






                      ],
                    )

                ),





              ],

            ),



    ]
          )


);

  }
}

