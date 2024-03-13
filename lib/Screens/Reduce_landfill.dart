import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intellibin/Onboarding/login.dart';


class Reduce_landfill extends StatefulWidget {
  const Reduce_landfill({Key? key}) : super(key: key);

  @override
  State<Reduce_landfill> createState() => _Reduce_landfillState();
}

class _Reduce_landfillState extends State<Reduce_landfill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDFE5DD),
      body:
         Column(mainAxisAlignment: MainAxisAlignment.center,
           children:[

      Container(
        margin:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.2) ,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.45,

          child: Column(
            
            children: [

              
              Image.asset("assets/images/recyclelogo.png"),
              Text("Reduce landfill",style: GoogleFonts.openSans(fontSize: 35,fontWeight: FontWeight.w500,color: Color(0xff2D6936)),),

       Container(
         margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
         width: MediaQuery.of(context).size.width*0.6,
         child:
              Text("Create a cleaner future through responsible actions",style: GoogleFonts.openSans(color: Color(0xff2D6936),fontSize: 15,fontWeight: FontWeight.w400),textAlign: TextAlign.center,)
       ),



            ],
            
          ),
          
        ),


             Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.165) ,
               child:
               Container(
                 width: MediaQuery.of(context).size.width*0.45,
                 height: MediaQuery.of(context).size.height*0.05,
                 child:
                 ElevatedButton(onPressed: (){

                   Navigator.of(context).push(CustomPageRoute(
                       login(),
                   ));

                 },

                   style: ElevatedButton.styleFrom(backgroundColor: Color(0xff26AD72),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                   child:

                   Text("Login",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600)),


                 ),
               ),
             ),


             Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.02,left: MediaQuery.of(context).size.width*0.395 ),
                 child:
                 Row(
                   children: [

                     Container(

                       height: MediaQuery.of(context).size.height*0.0105,
                       width: MediaQuery.of(context).size.width*0.07,

                       decoration: BoxDecoration(shape: BoxShape.rectangle,color: Color(0xffAFAFAF),borderRadius: BorderRadius.circular(15)),
                     ),
                     SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                     Container(
                       height: MediaQuery.of(context).size.height*0.0105,
                       width: MediaQuery.of(context).size.width*0.12,

                       decoration: BoxDecoration(shape: BoxShape.rectangle,color: Color(0xff26AD72),borderRadius: BorderRadius.circular(15)),
                     ),

                   ],
                 )
             ),

           ]
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