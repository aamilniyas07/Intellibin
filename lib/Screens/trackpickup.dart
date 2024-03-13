import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intellibin/Screens/homescreen.dart';
import 'package:intellibin/Screens/reqdisposal.dart';

class trackpickup extends StatefulWidget {
  const trackpickup({Key? key}) : super(key: key);

  @override
  State<trackpickup> createState() => _trackpickupState();
}

class _trackpickupState extends State<trackpickup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


body:
SingleChildScrollView(
  child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          Container(height: MediaQuery.of(context).size.height*0.46,
          width: MediaQuery.of(context).size.width,
            color: Color(0xff26AD72).withOpacity(0.5),
            child:
            Center(
              child:
            Text("Google Map",style: GoogleFonts.openSans(fontSize: 30),),
            ),
          ),
Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            Icon(Icons.person_outline,size: 40,),
            Container(height: MediaQuery.of(context).size.height*0.002,
              width: MediaQuery.of(context).size.width*0.12,
              color: Colors.black,
            ),
            Icon(Icons.fire_truck_outlined,size: 40,),
            Container(height: MediaQuery.of(context).size.height*0.002,
              width: MediaQuery.of(context).size.width*0.12,
              color: Colors.black,
            ),
            Icon(Icons.recycling_outlined,size:40,color: Colors.grey,),
            Container(height: MediaQuery.of(context).size.height*0.002,
              width: MediaQuery.of(context).size.width*0.12,
              color: Colors.black,
            ),
            Icon(Icons.check_box_outlined,size: 40,color: Colors.grey,),


          ],)
),


             Container(
               margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.015),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey.withOpacity(0.4)), // Top border
                    bottom: BorderSide(color: Colors.grey.withOpacity(0.4)), // Bottom border
                  ),
                ),
                child: ListTile(
                  leading: Image.asset("assets/images/abhay.png"),
                  title: Text(
                    "Abhay S",
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      color: Color(0xff2D6936),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    "Your location",
                    style: GoogleFonts.openSans(),
                  ),
                  trailing: Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ratings",
                          style: GoogleFonts.openSans(
                            color: Color(0xff2D6936),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Color(0xffFBBC05)),
                            Text(
                              "4.8",
                              style: GoogleFonts.openSans(
                                color: Color(0xff2D6936),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.025,left:MediaQuery.of(context).size.width*0.05 ) ,
         child:
         Text("Pick up details",style: GoogleFonts.openSans(fontSize: 20,color: Color(0xff2D6936),fontWeight: FontWeight.w600),)
          ),






         Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02)  ,
child:
Row(children: [


  Container(width: MediaQuery.of(context).size.width*0.5,
padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text("Estimated time",style: GoogleFonts.openSans(color: Color(0xff2D6936),fontSize: 20),),
          Text("3:40PM",style: GoogleFonts.openSans(color:Color(0xff222222),fontWeight: FontWeight.w300),)

        ],),
SizedBox(height: MediaQuery.of(context).size.height*0.02,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text("Type",style: GoogleFonts.openSans(color: Color(0xff2D6936),fontSize: 20),),
          Text("Glass",style: GoogleFonts.openSans(color:Color(0xff222222),fontWeight: FontWeight.w300),)

        ],)

    ],),

  ),
  Container(width: MediaQuery.of(context).size.width*0.5,

    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Date",style: GoogleFonts.openSans(color: Color(0xff2D6936),fontSize: 20),),
            Text("Wednesday 28 feb, 24",style: GoogleFonts.openSans(color:Color(0xff222222),fontWeight: FontWeight.w300),)

          ],),

        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Weight",style: GoogleFonts.openSans(color: Color(0xff2D6936),fontSize: 20),),
            Text("20kgs",style: GoogleFonts.openSans(color:Color(0xff222222),fontWeight: FontWeight.w300),)

          ],),

      ],),
  )
],)
         ),

           Padding(padding:EdgeInsets.only(top:MediaQuery.of(context).size.height*0.04,left: MediaQuery.of(context).size.width*0.05 ) ,
           child:
           Text("Cancel Pickup",style: GoogleFonts.openSans(color: Color(0xff2D6936),fontSize: 17,fontWeight: FontWeight.w400),)
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02) ,
                  child:
                  Container(
                    width: MediaQuery.of(context).size.width*0.45,
                    height: MediaQuery.of(context).size.height*0.05,
                    child:
                    ElevatedButton(onPressed: (){

                      Navigator.of(context).push(CustomPageRoute(
                          reqdisposal(),
                      ));

                    },

                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xff26AD72),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                      child:

                      Text("Reschedule",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 17)),


                    ),
                  ),
                ),
                Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02) ,
                  child:
                  Container(
                    width: MediaQuery.of(context).size.width*0.45,
                    height: MediaQuery.of(context).size.height*0.05,
                    child:
                    ElevatedButton(onPressed: (){

                      Navigator.of(context).push(CustomPageRoute(
                          homescreen()
                      ));

                    },

                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xff26AD72),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                      child:

                      Text("Continue",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 17)),


                    ),
                  ),
                ),
              ],
            ),
        ],)
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