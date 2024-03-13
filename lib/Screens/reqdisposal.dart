import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intellibin/Screens/pickupaddress.dart';

class reqdisposal extends StatefulWidget {
  const reqdisposal({Key? key}) : super(key: key);

  @override
  State<reqdisposal> createState() => _reqdisposalState();
}

class _reqdisposalState extends State<reqdisposal> {

  TextEditingController _controller = TextEditingController();
  DateTime? selectedDate;

  bool? checkboxValue1 = false;
  bool? checkboxValue2 = false;
  bool? checkboxValue3 = false;
  bool? checkboxValue4 = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _controller.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
resizeToAvoidBottomInset: false,
      appBar: AppBar(

        title: Text("Request disposal",style: GoogleFonts.openSans(),),

elevation: 0,


      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(padding:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,top:  MediaQuery.of(context).size.height*0.03),
        child:
        Text("What do you want to dispose?",style: GoogleFonts.openSans(color: Color(0xff26AD72),fontSize: 20),)
        ),
Padding(padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.015,left:  MediaQuery.of(context).size.width*0.02) ,
        child:
        Row(
          children: <Widget>[
            Checkbox(
              value: checkboxValue1,
              onChanged: (newValue) {
                setState(() {
                  checkboxValue1 = newValue;
                });
              },
            ),
            Text('Recyclable & Disposable',style: GoogleFonts.openSans(fontWeight: FontWeight.w400),),
          ],
        ),
),
          Padding(padding:EdgeInsets.only(left:  MediaQuery.of(context).size.width*0.02) ,
    child:
        Row(
          children: <Widget>[
            Checkbox(
              value: checkboxValue2,
              onChanged: (newValue) {
                setState(() {
                  checkboxValue2 = newValue;
                });
              },
            ),
            Text('Bottles',style: GoogleFonts.openSans(fontWeight: FontWeight.w400),),
          ],
        ),
          ),
          Padding(padding:EdgeInsets.only(left:  MediaQuery.of(context).size.width*0.02) ,
          child:
        Row(
          children: <Widget>[
            Checkbox(
              value: checkboxValue3,
              onChanged: (newValue) {
                setState(() {
                  checkboxValue3 = newValue;
                });
              },
            ),
            Text('Metal/Scraps',style: GoogleFonts.openSans(fontWeight: FontWeight.w400),),
          ],
        ),
          ),
          Padding(padding:EdgeInsets.only(left:  MediaQuery.of(context).size.width*0.02) ,
    child:
        Row(
          children: <Widget>[
            Checkbox(
              value: checkboxValue4,
              onChanged: (newValue) {
                setState(() {
                  checkboxValue4 = newValue;
                });
              },
            ),
            Text('Others',style: GoogleFonts.openSans(fontWeight: FontWeight.w400),),
          ],
        ),
          ),

    Padding(padding:EdgeInsets.only(left:  MediaQuery.of(context).size.width*0.05,top:MediaQuery.of(context).size.height*0.02 ) ,
    child:
          Text("Weight",style: GoogleFonts.openSans(fontWeight: FontWeight.w500,fontSize: 17),)
    ),

          Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.02),
            child:
            SizedBox(
              height: MediaQuery.of(context).size.height*0.06,
              child:
              TextFormField(



                decoration:
                InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.03,left:MediaQuery.of(context).size.width*0.03 ),


                    border: OutlineInputBorder(


                      borderRadius: BorderRadius.circular(10),


                    ),

                    hintText: 'Estimated weight of items selected (in Kgs)',




                    hintStyle: GoogleFonts.openSans(fontWeight: FontWeight.w500)),),
            ),
          ),
          Padding(padding:EdgeInsets.only(left:  MediaQuery.of(context).size.width*0.05,top:MediaQuery.of(context).size.height*0.03 ) ,
              child:
              Text("Date",style: GoogleFonts.openSans(fontWeight: FontWeight.w500,fontSize: 17),)
          ),
    Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05,top: MediaQuery.of(context).size.height*0.02),
    child:
    SizedBox(
    height: MediaQuery.of(context).size.height*0.06,
    child:
          TextFormField(
            controller: _controller,
            readOnly: true,
            onTap: () {
              _selectDate(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
              hintText: 'Select Date',
              suffixIcon: Icon(Icons.chevron_right_outlined),
              prefixIcon: Icon(Icons.calendar_month_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
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
                  pickupaddress(),
                ));


              },

                style: ElevatedButton.styleFrom(backgroundColor: Color(0xff26AD72),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                child:

                Text("Request",style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20)),


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