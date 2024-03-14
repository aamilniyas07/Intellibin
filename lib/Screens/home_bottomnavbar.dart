import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intellibin/Screens/dashboard_bottomnavbar.dart';
import 'package:intellibin/Screens/tracking_bottomnavbar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'reqdisposal.dart';
import 'trackpickup.dart';
import 'articles.dart';

class home_bottomnavbar extends StatefulWidget {
  const home_bottomnavbar({Key? key}) : super(key: key);

  @override
  State<home_bottomnavbar> createState() => _home_bottomnavbarState();
}

class _home_bottomnavbarState extends State<home_bottomnavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
        SingleChildScrollView(
          child:
      Column(
        children: [

          GestureDetector(
            onTap: (){

              Navigator.of(context).push(CustomPageRoute(
                reqdisposal(),
              ));

            },
            child:
          Container(
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right:  MediaQuery.of(context).size.width*0.05,top:  MediaQuery.of(context).size.height*0.05,),
            height: MediaQuery.of(context).size.height*0.1,

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xffCBE9D1),border: Border.all(color: Color(0xff26AD72)) ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

              Image.asset("assets/images/wastetruck.png"),
              Text("Request Disposal Now",style: GoogleFonts.openSans(fontSize: 20),),
              Icon(Icons.chevron_right,size: 50,)


            ],),

          ),
          ),
          Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right:  MediaQuery.of(context).size.width*0.05,top:  MediaQuery.of(context).size.height*0.05,),
            height:MediaQuery.of(context).size.height*0.2 ,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xff26AD72)),

            child: Row(


              children: [
              

SizedBox(

  width:MediaQuery.of(context).size.width*0.89 ,
  child:
Stack(

  children:[

                    Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                      Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.01 ),
                        child:
                        Text("Points",style: GoogleFonts.openSans(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),),
                      ),

                        Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05),
                          child:
                      RichText(
                        text: TextSpan(
                          text: '375',
                          style: GoogleFonts.openSans(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),
                          children:[
                            TextSpan(text: 'pts',style: GoogleFonts.openSans(color:Colors.white,fontSize: 22)),
                          ],
                        ),
                      ),
                        ),
                        Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,top:MediaQuery.of(context).size.height*0.01 ),
                          child:
                      Text("Current point to claim cash",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w300)),
                        ),

                        LinearPercentIndicator(
                          padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05),
                        lineHeight:MediaQuery.of(context).size.height*0.01,
                        width: MediaQuery.of(context).size.width*0.7,

                        percent: 0.3,
                        progressColor: Colors.white,
                        barRadius: Radius.circular(1.5),
                        fillColor: Color(0xff26AD72),
                      ),
                        Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,top:MediaQuery.of(context).size.height*0.01 ),
                          child:
                      RichText(
                        text: TextSpan(
                          text: 'You need',
                          style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w300),
                          children:[
                            TextSpan(text: ' 625 ',style: GoogleFonts.openSans(color:Colors.white,fontWeight: FontWeight.w500)),
                            TextSpan(text: 'more points to claim the reward',style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ),
                        ),
                    ],),

                  Positioned(
                      left: MediaQuery.of(context).size.width*0.6,
                      child:
                  Image.asset("assets/images/homepageimg.png")
                  ),
]
),
),

            ],),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Padding(padding:EdgeInsets.only(right: MediaQuery.of(context).size.width*0.05,top:MediaQuery.of(context).size.height*0.01 ) ,
            child:

    RichText(
    text: TextSpan(
    text: 'Redeem Points',
    style: GoogleFonts.openSans(color: Color(0xff595555),fontSize: 17),
    children:[

    TextSpan(text: ' >',style: GoogleFonts.openSans(color: Color(0xff26AD72),fontSize: 17)),
    ],
    ),
    ),
            ),
          ],),

          Row(children:
            [

              Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03,left: MediaQuery.of(context).size.width*0.05),
            child:
            Text("Quick actions",style: GoogleFonts.openSans(fontSize: 20,fontWeight: FontWeight.w500),),
              ),


          ],),
Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03) ,
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
GestureDetector(
  onTap:(){

    Navigator.of(context).push(CustomPageRoute(
      trackpickup(),
    ));

  },
  child:
            Column(children: [


              Container(
                height: MediaQuery.of(context).size.height*0.085,
                width: MediaQuery.of(context).size.width*0.18,
                decoration: BoxDecoration(color: Color(0xff26AD72).withOpacity(0.25),borderRadius: BorderRadius.circular(60)),
                child: Icon(Icons.my_location_outlined,size: 40,color: Color(0xff26AD72),),),

              Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.005) ,
              child:
              Text("Tracking",style: GoogleFonts.openSans(color: Color(0xff595555)),)
              ),
            ],),
),
        GestureDetector(
          onTap:(){

            Navigator.of(context).push(CustomPageRoute(
              dashboard_bottomnavbar(),
            ));

          },
          child:
            Column(children: [

              Container(
                height: MediaQuery.of(context).size.height*0.085,
                width: MediaQuery.of(context).size.width*0.18,
                decoration: BoxDecoration(color: Color(0xffD93333).withOpacity(0.25),borderRadius: BorderRadius.circular(60)),
                child: Icon(Icons.dashboard_outlined,size: 40,color: Color(0xffD93333),),),
              Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.005) ,
                  child:
                  Text("Dashboard",style: GoogleFonts.openSans(color: Color(0xff595555)),)
              ),
            ],),
        ),

        GestureDetector(
          onTap:(){

            Navigator.of(context).push(CustomPageRoute(
              reqdisposal(),
            ));

          },
          child:
            Column(children: [

              Container(
                height: MediaQuery.of(context).size.height*0.085,
                width: MediaQuery.of(context).size.width*0.18,
                decoration: BoxDecoration(color: Color(0xff2765C1).withOpacity(0.25),borderRadius: BorderRadius.circular(60)),
                child: Icon(Icons.calendar_month,size: 40,color: Color(0xff2765C1),),),
              Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.005) ,
                  child:
                  Text("Book Pickup",style: GoogleFonts.openSans(color: Color(0xff595555)),)
              ),
            ],),

        ),

          ],)
),
          Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.025) ,
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Column(children: [

                    Container(
                      height: MediaQuery.of(context).size.height*0.085,
                      width: MediaQuery.of(context).size.width*0.18,
                      decoration: BoxDecoration(color: Color(0xffD99C26).withOpacity(0.25),borderRadius: BorderRadius.circular(60)),
                      child: Icon(Icons.currency_rupee,size: 40,color: Color(0xffD99C26),),),
                    Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.005) ,
                        child:
                        Text("Reward",style: GoogleFonts.openSans(color: Color(0xff595555)),)
                    ),
                  ],),

            GestureDetector(
              onTap:(){

                Navigator.of(context).push(CustomPageRoute(
                  tracking_bottomnavbar(),
                ));

              },
              child:
                  Column(children: [

                    Container(
                      height: MediaQuery.of(context).size.height*0.085,
                      width: MediaQuery.of(context).size.width*0.18,
                      decoration: BoxDecoration(color: Color(0xffC01BDB).withOpacity(0.25),borderRadius: BorderRadius.circular(60)),
                      child: Icon(Icons.location_on_outlined,size: 40,color: Color(0xffC01BDB),),),
                    Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.005) ,
                        child:
                        Text("Locations",style: GoogleFonts.openSans(color: Color(0xff595555)),)
                    ),
                  ],),
            ),

            GestureDetector(
              onTap:(){

                Navigator.of(context).push(CustomPageRoute(
                  articles(),
                ));

              },
              child:
                  Column(children: [

                    Container(
                      height: MediaQuery.of(context).size.height*0.085,
                      width: MediaQuery.of(context).size.width*0.18,
                      decoration: BoxDecoration(color: Color(0xff26A5B7).withOpacity(0.25),borderRadius: BorderRadius.circular(60)),
                      child: Icon(Icons.article_outlined,size: 40,color: Color(0xff26A5B7),),),
                    Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.005) ,
                        child:
                        Text("Articles",style: GoogleFonts.openSans(color: Color(0xff595555)),)
                    ),
                  ],),
            ),


                ],)
          ),
        ],
      ),
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