import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:pie_chart/pie_chart.dart';

final List<String> items = [
  'This Month', 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'
];

final List<String> items2 = ['Plastic bags', 'Glass', 'Metal', 'Others'];

Map<String, double> dataMap = {
  "Plastic bags": 5,
  "Glass": 3,
  "Metal": 2,
  "Others": 2,
};

List<Color> colorList = [
  Color(0xff4285F4),
  Color(0xffFBBC05),
  Color(0xffC5221F),
  Color(0xff039772),
];

class dashboard_bottomnavbar extends StatefulWidget {
  const dashboard_bottomnavbar({Key? key}) : super(key: key);

  @override
  State<dashboard_bottomnavbar> createState() => _dashboard_bottomnavbarState();
}

class _dashboard_bottomnavbarState extends State<dashboard_bottomnavbar> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = items.first;
  }

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child:
      Scaffold(

      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: Text(
                'Select Month',
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: GoogleFonts.openSans(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              }).toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              },
              buttonStyleData: ButtonStyleData(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.35,
                padding: const EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                  color: Colors.white,
                ),
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                iconSize: 14,
                iconEnabledColor: Colors.black,
                iconDisabledColor: Colors.grey,
              ),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                ),
                offset: const Offset(-20, 0),
                scrollbarTheme: ScrollbarThemeData(
                  radius: const Radius.circular(40),
                  thickness: MaterialStateProperty.all(6),
                  thumbVisibility: MaterialStateProperty.all(true),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 14),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          PieChart(
            dataMap: dataMap,
            legendOptions: LegendOptions(showLegends: false),
            chartValuesOptions: ChartValuesOptions(showChartValues: false),
            animationDuration: Duration(milliseconds: 800),
            chartRadius: MediaQuery.of(context).size.width * 0.6,
            colorList: colorList,
            initialAngleInDegree: 0,
            chartType: ChartType.ring,
            ringStrokeWidth: 20,
            centerWidget: RichText(
              text: TextSpan(
                text: '14',
                style: GoogleFonts.openSans(color: Color(0xff26AD72), fontSize: 60, fontWeight: FontWeight.w500),
                children: [
                  TextSpan(text: 'KGs', style: GoogleFonts.openSans(color: Colors.black, fontSize: 22)),
                ],
              ),
            ),
          ),
Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.06),
child:
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [

    Padding(padding:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05),
  child:
  Text("Summary",style: GoogleFonts.openSans(fontSize: 25,color: Color(0xff2D6936),fontWeight: FontWeight.w600),),
    ),

    Padding(padding:EdgeInsets.only(right: MediaQuery.of(context).size.width*0.05),
    child:
    Text("Perc",style: GoogleFonts.openSans(fontSize: 25,color: Color(0xff2D6936),fontWeight: FontWeight.w600),),
    ),
],),
),

Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
    child:
           ListView(
             shrinkWrap: true,
              children: dataMap.entries.map((entry) {
                int index = items2.indexOf(entry.key);
                Color color = index != -1 ? colorList[index] : Colors.grey; // If the entry is not found in items2, use grey color

                return ListTile(
                  title: Text(
                    entry.key,
                    style: GoogleFonts.openSans(),
                  ),
                  leading: Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: color,
                    ),
                  ),
                  trailing: Text(
                    '${entry.value.toInt()*10}%', // Displaying the double value in trailing
                    style: GoogleFonts.openSans(fontSize: 20),
                  ),
                );
              }).toList(),
            ),

),

        ],
      ),
    )
      );
  }
}
