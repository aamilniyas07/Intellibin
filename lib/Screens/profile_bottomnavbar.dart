import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profile_bottomnavbar extends StatefulWidget {
  const profile_bottomnavbar({Key? key}) : super(key: key);

  @override
  State<profile_bottomnavbar> createState() => _profile_bottomnavbarState();
}

class _profile_bottomnavbarState extends State<profile_bottomnavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: Text("Coming Soon",style: GoogleFonts.openSans(fontSize: 40),),),

    );
  }
}
