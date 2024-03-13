import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intellibin/Screens/homescreen.dart';
import 'package:intellibin/Screens/trackpickup.dart';

class congratulate extends StatefulWidget {
  const congratulate({Key? key}) : super(key: key);

  @override
  State<congratulate> createState() => _congratulateState();
}

class _congratulateState extends State<congratulate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

            Image.asset("assets/images/Trash.png"),
              Text("Congratulations!",style: GoogleFonts.openSans(fontWeight: FontWeight.w600,fontSize: 40,color: Color(0xff2D6936)),),

              Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01) ,
              child:
              Text("You have earned 15 Points!",style: GoogleFonts.openSans(fontWeight: FontWeight.w400,fontSize: 17,color: Color(0xff2D6936)),)
              ),
              Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.15) ,
                child:
                Container(
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right:  MediaQuery.of(context).size.width*0.05 ),
                  width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.height*0.06,
                  child:
                  ElevatedButton(onPressed: (){


                    Navigator.of(context).push(CustomPageRoute(
                      trackpickup(),
                    ));


                  },

                    style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,elevation: 0,shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff26AD72),width: 1),borderRadius: BorderRadius.all(Radius.circular(10),
                    )

                    )

                    ),
                    child:

                    Text("Track the pickup",style: GoogleFonts.openSans(color: Color(0xff26AD72),fontWeight: FontWeight.w600,fontSize: 20)),


                  ),
                ),
              ),
              Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03) ,
                child:
                Container(
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right:  MediaQuery.of(context).size.width*0.05 ),
                  width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.height*0.06,
                  child:
                  ElevatedButton(onPressed: (){


                    Navigator.of(context).push(CustomPageRoute(
                      homescreen()
                    ));


                  },

                    style: ElevatedButton.styleFrom(backgroundColor: Color(0xff26AD72),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                    child:

                    Text("Back home",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20)),


                  ),
                ),
              ),

          ],),
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