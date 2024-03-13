import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intellibin/Screens/congratulate.dart';

class defaultaddress extends StatefulWidget {
  const defaultaddress({Key? key}) : super(key: key);

  @override
  State<defaultaddress> createState() => _defaultaddressState();
}

class _defaultaddressState extends State<defaultaddress> {


  bool? checkboxvalue=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      appBar: AppBar(

        title: Text("Select your pickup address",style: GoogleFonts.openSans(fontSize: 20),),

        elevation: 0,


      ),

      body: Column(children: [

        Container(
          height: MediaQuery.of(context).size.height*0.25,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,top:MediaQuery.of(context).size.height*0.02  ),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: checkboxvalue==true?Color(0xff26AD72):Colors.grey,width: 2)),
          child:


        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Padding(padding:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.025) ,
  child:
  Text("Mark",style: GoogleFonts.openSans(color: checkboxvalue==true?Color(0xff26AD72):Colors.grey,fontSize: 20,fontWeight: FontWeight.w500),),
    ),
    Padding(padding:EdgeInsets.only(right: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.025) ,
      child:
  Icon(Icons.mode_edit_outline_outlined,color: checkboxvalue==true?Color(0xff26AD72):Colors.grey,)
    ),
],),
          Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.015,left: MediaQuery.of(context).size.width*0.05) ,
            child:
      Text("5114 Anamaria Ports, Kennithtown",style: GoogleFonts.openSans(fontWeight: FontWeight.w300),),

          ),
          Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.005,left: MediaQuery.of(context).size.width*0.05) ,
            child:
            Text("Kerala",style: GoogleFonts.openSans(fontWeight: FontWeight.w300),),
          ),
          Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02,left: MediaQuery.of(context).size.width*0.05) ,
            child:
            Text("+91 12345 67890",style: GoogleFonts.openSans(fontWeight: FontWeight.w300),),
          ),
            Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.015,left: MediaQuery.of(context).size.width*0.015) ,
              child:
              Row(
                children: <Widget>[
                  Checkbox(
                    value: checkboxvalue,
                    onChanged: (newValue) {
                      setState(() {
                        checkboxvalue = newValue;
                      });
                    },
                  ),
                  Text('This address is selected as default address',style: GoogleFonts.openSans(fontWeight: FontWeight.w300),),
                ],
              ),
            ),




          ],),),

        Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45) ,
          child:
          Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right:  MediaQuery.of(context).size.width*0.05 ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.06,
            child:
            ElevatedButton(onPressed: (){


              Navigator.of(context).push(CustomPageRoute(
                congratulate(),
              ));


            },

              style: ElevatedButton.styleFrom(backgroundColor: Color(0xff26AD72),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
              child:

              Text("Proceed",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20)),


            ),
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