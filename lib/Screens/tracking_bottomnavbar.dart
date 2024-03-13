import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class tracking_bottomnavbar extends StatefulWidget {
  const tracking_bottomnavbar({Key? key}) : super(key: key);

  @override
  State<tracking_bottomnavbar> createState() => _tracking_bottomnavbarState();
}

class _tracking_bottomnavbarState extends State<tracking_bottomnavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: Text("Coming Soon",style: GoogleFonts.openSans(fontSize: 40),),),

    );
  }
}
