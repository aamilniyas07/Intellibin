import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intellibin/Screens/homescreen.dart';
import 'signup.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
resizeToAvoidBottomInset: false,
      body: Column(

        children: [
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children:[

    Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.15) ,
      height: MediaQuery.of(context).size.height*0.12,
      width: MediaQuery.of(context).size.width*0.25,

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(color: Color(0xff2D6D38))),


      child:

          Image.asset("assets/images/smalllogo.png"),
    ),


],
),
          Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03) ,
          child:
          Text("Login",style: GoogleFonts.openSans(color: Color(0xff2D6936),fontWeight: FontWeight.w500,fontSize: 30),),
          ),
Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.035),
          child:
              SizedBox(
                height: MediaQuery.of(context).size.height*0.06,
                child:
          TextFormField(
            decoration:
          InputDecoration(
            contentPadding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.03),
            prefixIcon: Icon(Icons.person_outlined),

              border: OutlineInputBorder(

            
            borderRadius: BorderRadius.circular(10),


          ),

              hintText: 'Username',




              hintStyle: GoogleFonts.openSans(fontWeight: FontWeight.w500)),),
              ),
),
          Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.03),
            child:
            SizedBox(
              height: MediaQuery.of(context).size.height*0.06,
              child:
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,

                decoration:
                InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.03),
                    prefixIcon: Icon(Icons.password_outlined),
                    suffixIcon: Icon(Icons.visibility_outlined,size: 20,),

                    border: OutlineInputBorder(


                      borderRadius: BorderRadius.circular(10),


                    ),

                    hintText: 'Password',




                    hintStyle: GoogleFonts.openSans(fontWeight: FontWeight.w500)),),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding:EdgeInsets.only(top:MediaQuery.of(context).size.height*0.01,right: MediaQuery.of(context).size.width*0.05 ) ,
            child:
            Text("Forgot password?",style: GoogleFonts.openSans(color: Colors.black),)
              ),
          ],),

          Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05) ,
            child:
            Container(
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right:  MediaQuery.of(context).size.width*0.05 ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.05,
              child:
              ElevatedButton(onPressed: (){

                Navigator.of(context).push(CustomPageRoute(
                  homescreen(),
                ));


              },

                style: ElevatedButton.styleFrom(backgroundColor: Color(0xff26AD72),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                child:

                Text("Login",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20)),


              ),
            ),
          ),

Padding(padding:EdgeInsets.only(top:MediaQuery.of(context).size.height*0.03,left: MediaQuery.of(context).size.width*0.03,right: MediaQuery.of(context).size.width*0.03 ),
       child:
          Row(
mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(height: MediaQuery.of(context).size.height*0.001,
              width: MediaQuery.of(context).size.width*0.25,
                color: Colors.black,
              ),
            Text("  or sign in with  ",style: GoogleFonts.openSans(),),
              Container(height: MediaQuery.of(context).size.height*0.001,
                width: MediaQuery.of(context).size.width*0.25,
                color: Colors.black,
              ),
          ],)
),

Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05),
child:
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [

  Image.asset("assets/images/Google.png"),
  SizedBox(width: MediaQuery.of(context).size.width*0.1,),
  Image.asset("assets/images/facebook.png"),
],)
),
Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.04),
          child:
              GestureDetector(
                onTap: (){

                  Navigator.of(context).push(CustomPageRoute(
                      signup(),
                  ));

                },
                child:
          RichText(
            text: TextSpan(
              text: 'Don\'t have an account? ',
              style: GoogleFonts.openSans(color: Colors.black),
              children:[
                TextSpan(text: ' Sign up here',style: GoogleFonts.openSans(color: Color(0xff26AD72))),
              ],
            ),
          )
              ),
),

            ],),

    );
  }
}

class CustomPageRoute<T> extends PageRoute<T> {
  CustomPageRoute(this.child);
  @override

  Color get barrierColor => Colors.transparent;

  @override
  String get barrierLabel => '';

  final Widget child;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 200);
}