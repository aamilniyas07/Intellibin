import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Welcomescreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xffE7E8E3),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.center,

           children:[
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
              height: MediaQuery.of(context).size.height*0.37,
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(400),border: Border.all(color: Color(0xff2D6D38))),

              child:
            Image.asset("assets/images/splash.png"),
            ),
            Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
             child:
             Text("Intellibin",style: GoogleFonts.openSans(color: Color(0xff26AD72),fontSize: 50,fontWeight: FontWeight.bold),)
                  ),

             Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.2) ,
             child:
                 Container(
                   width: MediaQuery.of(context).size.width*0.45,
                   height: MediaQuery.of(context).size.height*0.05,
                   child:
             ElevatedButton(onPressed: (){

               Navigator.of(context).push(CustomPageRoute(
                 Welcomescreen()
               ));

             },

               style: ElevatedButton.styleFrom(backgroundColor: Color(0xff26AD72),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
               child:

                 Text("Get Started",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600)),


             ),
                 ),
             ),
                  ],
          ),
        ],
      ),


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