import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intellibin/Screens/defaultaddress.dart';

class pickupaddress extends StatefulWidget {
  const pickupaddress({Key? key}) : super(key: key);

  @override
  State<pickupaddress> createState() => _pickupaddressState();
}

class _pickupaddressState extends State<pickupaddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      appBar: AppBar(

        title: Text("Select your pickup address",style: GoogleFonts.openSans(fontSize: 20),),

        elevation: 0,


      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(padding:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.03) ,
        child:
        RichText(
          text: TextSpan(
            text: 'Full name',
            style: GoogleFonts.openSans(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),
            children:[
              TextSpan(text: ' *',style: GoogleFonts.openSans(color:Color(0xff26AD72),fontSize: 15)),
            ],
          ),
        ),
),
          Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.01),
          child:
          SizedBox(
            height: MediaQuery.of(context).size.height*0.05,
            child:
            TextFormField(



              decoration:
              InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.01,left:MediaQuery.of(context).size.width*0.03 ),


                  border: OutlineInputBorder(


                    borderRadius: BorderRadius.circular(10),


                  ),

                  hintText: 'Mark Davis',




                  hintStyle: GoogleFonts.openSans(fontWeight: FontWeight.w500)),),
          ),
        ),


          Padding(padding:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.025) ,
            child:
            RichText(
              text: TextSpan(
                text: 'Email',
                style: GoogleFonts.openSans(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),
                children:[
                  TextSpan(text: ' *',style: GoogleFonts.openSans(color:Color(0xff26AD72),fontSize: 15)),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.01),
            child:
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
              child:
              TextFormField(

keyboardType: TextInputType.emailAddress,

                decoration:
                InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.01,left:MediaQuery.of(context).size.width*0.03 ),


                    border: OutlineInputBorder(


                      borderRadius: BorderRadius.circular(10),


                    ),

                    hintText: 'markdavis@gmail.com',




                    hintStyle: GoogleFonts.openSans(fontWeight: FontWeight.w500)),),
            ),
          ),


          Padding(padding:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.025) ,
            child:
            RichText(
              text: TextSpan(
                text: 'Address',
                style: GoogleFonts.openSans(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),
                children:[
                  TextSpan(text: ' *',style: GoogleFonts.openSans(color:Color(0xff26AD72),fontSize: 15)),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.01),
            child:
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
              child:
              TextFormField(



                decoration:
                InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.01,left:MediaQuery.of(context).size.width*0.03 ),


                    border: OutlineInputBorder(


                      borderRadius: BorderRadius.circular(10),


                    ),

                    hintText: '5114 Anamaria Ports, Kennithtown',




                    hintStyle: GoogleFonts.openSans(fontWeight: FontWeight.w500)),),
            ),
          ),


          Padding(padding:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.025) ,
            child:
            RichText(
              text: TextSpan(
                text: 'Phone Number',
                style: GoogleFonts.openSans(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),
                children:[
                  TextSpan(text: ' *',style: GoogleFonts.openSans(color:Color(0xff26AD72),fontSize: 15)),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.01),
            child:
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
              child:
              TextFormField(
                keyboardType: TextInputType.phone,



                decoration:
                InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.01,left:MediaQuery.of(context).size.width*0.03 ),


                    border: OutlineInputBorder(


                      borderRadius: BorderRadius.circular(10),


                    ),

                    hintText: '+91 12345 67890',




                    hintStyle: GoogleFonts.openSans(fontWeight: FontWeight.w500)),),
            ),
          ),


          Padding(padding:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.025) ,
            child:
            RichText(
              text: TextSpan(
                text: 'City',
                style: GoogleFonts.openSans(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),
                children:[
                  TextSpan(text: ' *',style: GoogleFonts.openSans(color:Color(0xff26AD72),fontSize: 15)),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.01),
            child:
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
              child:
              TextFormField(



                decoration:
                InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.01,left:MediaQuery.of(context).size.width*0.03 ),


                    border: OutlineInputBorder(


                      borderRadius: BorderRadius.circular(10),


                    ),

                    hintText: 'Ernakulam',




                    hintStyle: GoogleFonts.openSans(fontWeight: FontWeight.w500)),),
            ),
          ),


          Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.13) ,
            child:
            Container(
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right:  MediaQuery.of(context).size.width*0.05 ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.06,
              child:
              ElevatedButton(onPressed: (){


                Navigator.of(context).push(CustomPageRoute(
                  defaultaddress(),
                ));


              },

                style: ElevatedButton.styleFrom(backgroundColor: Color(0xff26AD72),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                child:

                Text("Save",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20)),


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