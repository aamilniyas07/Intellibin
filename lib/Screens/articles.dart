import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class articles extends StatefulWidget {
  const articles({Key? key}) : super(key: key);

  @override
  State<articles> createState() => _articlesState();
}

class _articlesState extends State<articles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(

        title: Text("Articles",style: GoogleFonts.openSans(),),

      ),

      body: Column(children: [

        Container(
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right:  MediaQuery.of(context).size.width*0.05,top:  MediaQuery.of(context).size.height*0.03,),
          height:MediaQuery.of(context).size.height*0.2 ,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xff039772)),

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
                            Text("Environmental Sustainability Impacts",style: GoogleFonts.openSans(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600),),
                          ),

                          Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,top:MediaQuery.of(context).size.height*0.03 ),
                            child:
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w400)),
                          ),

                          Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,top:MediaQuery.of(context).size.height*0.03 ),
                            child:
                            Row(
                              children: [
                                Text("Read more ",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600)),
                              Icon(Icons.chevron_right_outlined,color: Colors.white,size: 20,),
                              ],
                            ),
                          ),


                        ],),

                      Positioned(
                          left: MediaQuery.of(context).size.width*0.69,
                          top: MediaQuery.of(context).size.height*0.04,
                          child:
                          Image.asset("assets/images/article1.png",height: 150,)
                      ),
                    ]
                ),
              ),

            ],),
        ),

        Container(
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right:  MediaQuery.of(context).size.width*0.05,top:  MediaQuery.of(context).size.height*0.03,),
          height:MediaQuery.of(context).size.height*0.2 ,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xff039772)),

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
                            Text("Household solid waste management",style: GoogleFonts.openSans(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600),),
                          ),

                          Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,top:MediaQuery.of(context).size.height*0.03 ),
                            child:
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w400)),
                          ),

                          Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,top:MediaQuery.of(context).size.height*0.03 ),
                            child:
                            Row(
                              children: [
                                Text("Read more ",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600)),
                                Icon(Icons.chevron_right_outlined,color: Colors.white,size: 20,),
                              ],
                            ),
                          ),


                        ],),

                      Positioned(
                          left: MediaQuery.of(context).size.width*0.6,
                          top: MediaQuery.of(context).size.height*0.06,
                          child:
                          Image.asset("assets/images/article2.png",height: 150,)
                      ),
                    ]
                ),
              ),

            ],),
        ),

        Container(
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right:  MediaQuery.of(context).size.width*0.05,top:  MediaQuery.of(context).size.height*0.03,),
          height:MediaQuery.of(context).size.height*0.2 ,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xff039772)),

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
                            Text("Concepts of waste management",style: GoogleFonts.openSans(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600),),
                          ),

                          Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,top:MediaQuery.of(context).size.height*0.03 ),
                            child:
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w400)),
                          ),

                          Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05,top:MediaQuery.of(context).size.height*0.03 ),
                            child:
                            Row(
                              children: [
                                Text("Read more ",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600)),
                                Icon(Icons.chevron_right_outlined,color: Colors.white,size: 20,),
                              ],
                            ),
                          ),


                        ],),

                      Positioned(
                          left: MediaQuery.of(context).size.width*0.6,
                          top: MediaQuery.of(context).size.height*0.06,
                          child:
                          Image.asset("assets/images/article3.png",height: 150,)
                      ),
                    ]
                ),
              ),

            ],),
        ),

        Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05) ,
          child:
          Container(
            width: MediaQuery.of(context).size.width*0.45,
            height: MediaQuery.of(context).size.height*0.05,
            child:
            ElevatedButton(onPressed: (){



            },

              style: ElevatedButton.styleFrom(backgroundColor: Color(0xff26AD72),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
              child:

              Text("View all",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 17)),


            ),
          ),
        ),

      ],),

    );
  }
}


