import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intellibin/Screens/Reduce_landfill.dart';


class Welcomescreen extends StatefulWidget {
  const Welcomescreen({Key? key}) : super(key: key);

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xffE7E8E3),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.065,left: MediaQuery.of(context).size.width*0.04),
            child:
          Column(

            children: [

              Text("Welcome",style: GoogleFonts.openSans(color: Color(0xff2D6936),fontSize: 58,fontWeight: FontWeight.w600),textAlign: TextAlign.left,),
              Text("We are glad that you are here",style: GoogleFonts.openSans(color: Color(0xff2D6936),fontSize:17,fontWeight: FontWeight.w300),textAlign: TextAlign.left,),






            ],

          ),
          ),

        Container(
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.45,top: MediaQuery.of(context).size.height*0.05),
          child:
          Image.asset("assets/images/Trashcan.png"),
        ),

          Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.110,left: MediaQuery.of(context).size.width*0.272) ,
            child:
            Container(
              width: MediaQuery.of(context).size.width*0.45,
              height: MediaQuery.of(context).size.height*0.05,
              child:
              ElevatedButton(onPressed: (){

                Navigator.of(context).push(CustomPageRoute(
                    Reduce_landfill()
                ));

              },

                style: ElevatedButton.styleFrom(backgroundColor: Color(0xff26AD72),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                child:

                Text("Continue",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600)),


              ),
            ),
          ),


          Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.02,left: MediaQuery.of(context).size.width*0.395 ),
          child:
          Row(
            children: [

              Container(
                height: MediaQuery.of(context).size.height*0.0105,
                width: MediaQuery.of(context).size.width*0.12,

                decoration: BoxDecoration(shape: BoxShape.rectangle,color: Color(0xff26AD72),borderRadius: BorderRadius.circular(15)),
              ),
SizedBox(width: MediaQuery.of(context).size.width*0.01,),
              Container(
                height: MediaQuery.of(context).size.height*0.0105,
                width: MediaQuery.of(context).size.width*0.07,

                decoration: BoxDecoration(shape: BoxShape.rectangle,color: Color(0xffAFAFAF),borderRadius: BorderRadius.circular(15)),
              ),

            ],
          )
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