import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intellibin/Screens/SplashScreen.dart';
import 'package:intellibin/Screens/home_bottomnavbar.dart';

class profile_bottomnavbar extends StatefulWidget {
  const profile_bottomnavbar({Key? key}) : super(key: key);

  @override
  State<profile_bottomnavbar> createState() => _profile_bottomnavbarState();
}

class _profile_bottomnavbarState extends State<profile_bottomnavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
// appBar: AppBar(
//   backgroundColor: Color(0xff039772),
//   centerTitle: true,
//   elevation: 0,
//   title: Text("Profile",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 25),),
//   toolbarHeight: MediaQuery.of(context).size.height*0.13,
//   actions: [
//     Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.03),
//     child:
//     Icon(Icons.edit_note,size: 40,color: Colors.white,)
//     ),
//   ],
//
//   automaticallyImplyLeading: false,
// ),
// body:  Stack(children: [
//
//
//
//   Image.asset("assets/images/photobig.png"),
//
// ],
// ),

    body:
Column(
  children: [
    Container(
      height: MediaQuery.of(context).size.height*0.35,
      width: MediaQuery.of(context).size.width,


      child:
        Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  color: Color(0xff039772),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
                            child: Icon(Icons.edit_note, size: 40, color: Colors.transparent),
                          ),
                          Text(
                            "Profile",
                            style: GoogleFonts.openSans(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.03),
                            child: Icon(Icons.edit_note, size: 40, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
       bottom: MediaQuery.of(context).size.height*0.01,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/photobig.png",

                  ),
                  Text("Abhay S",style: GoogleFonts.openSans(fontSize: 23,fontWeight: FontWeight.w600),)
                ],
              ),
            ),





          ],
        ),
    ),

    Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.005 ),
      margin: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.02 ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 1, // Blur radius
            offset: Offset(0, 1), // Offset in x and y directions
          ),

        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        RichText(
          text: TextSpan(
            text: '14',
            style: GoogleFonts.openSans(color: Color(0xff26AD72),fontSize: 30,fontWeight: FontWeight.w500),
            children:[
              TextSpan(text: ' KGs',style: GoogleFonts.openSans(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400)),
            ],
          ),
        ),
          
          Text("of waste has been recycled",style: GoogleFonts.openSans(fontSize: 17,color: Colors.black),),



      ],)

    ),

    Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          // Replace the IconData and title with your actual data
          List<IconData> iconData = [Icons.star_border_outlined,Icons.notifications_none_outlined,Icons.settings_outlined,Icons.info_outline_rounded,Icons.support_agent_outlined,Icons.logout_outlined];
          List<String> title = ["Points & Reward","Notifications","Settings","About us","Help & Support","Sign out"];

          return Column(
            children: [
              Container(
                height:MediaQuery.of(context).size.height * 0.045,
                child:
              ListTile(
                leading: Icon(iconData[index],color: index==5?Color(0xffC5221F):Color(0xff03946F),),
                title: Text(title[index],style: GoogleFonts.openSans(fontWeight: FontWeight.w400,color: index==5?Color(0xffC5221F):Colors.black),), // Title
                trailing: Icon(Icons.keyboard_arrow_right,color: Colors.grey,), // Right arrow as suffix
                onTap: () {
                  if(index==5)
                    {

                      Navigator.of(context).push(CustomPageRoute(
                        Splashscreen(),
                      ));

                    }
                },
              ),
              ),
              Divider(thickness: 1,color: Colors.grey.withOpacity(0.2),), // Divider between items
            ],
          );
        },
      ),
    )

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