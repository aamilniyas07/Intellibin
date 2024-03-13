import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intellibin/Screens/trackpickup.dart';
import 'home_bottomnavbar.dart';
import 'dashboard_bottomnavbar.dart';
import 'profile_bottomnavbar.dart';
import 'tracking_bottomnavbar.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List screens=[home_bottomnavbar(),dashboard_bottomnavbar(),trackpickup(),profile_bottomnavbar()];

  @override

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
actions: [

  Padding(padding:EdgeInsets.only(right: MediaQuery.of(context).size.width*0.05) ,
  child:
      Container(
        height:MediaQuery.of(context).size.height*0.05 ,
  width: MediaQuery.of(context).size.width*0.1,
  decoration: BoxDecoration(color: Color(0xffCBE9D1),borderRadius: BorderRadius.circular(50)),
  child:

  Icon(Icons.notifications_none_outlined),
      ),
  ),

],
        automaticallyImplyLeading: false,
        title: Text("Hello Arjun!",style: GoogleFonts.openSans(fontSize: 20),),
        leading: Image.asset("assets/images/photo.png"),

      ),

      bottomNavigationBar: BottomNavigationBar(

        items: [

        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black,),label: 'Home',activeIcon:Icon(Icons.home,color: Colors.black,), ),
        BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined,color: Colors.black,),label: 'Dashboard',activeIcon: Icon(Icons.dashboard,color: Colors.black,),),
        BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined,color: Colors.black,),label: 'Tracking',activeIcon: Icon(Icons.location_on,color: Colors.black,),),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline,color: Colors.black,),label: 'Profile',activeIcon: Icon(Icons.person,color: Colors.black,),),


      ],
      iconSize: 25,
        selectedIconTheme: IconThemeData(fill: 1),
        onTap: _onItemTapped,
        selectedLabelStyle: GoogleFonts.openSans(color: Colors.black),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        elevation: 0,

      ),

      body: screens[_selectedIndex],

    );
  }
}
