import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redf/constants/app_colors.dart';

class DropDownList extends StatefulWidget {
  const DropDownList({Key? key}) : super(key: key);

  @override
  State<DropDownList> createState() => _DropDownListState();
}
class _DropDownListState extends State<DropDownList> {

String dropdownvalue = '#xxxxx - Sybsidized loan';
var items = [
  '#xxxxx - Sybsidized loan',
  'payments',
  'Deposits',
];
String? value;

  DropdownMenuItem <String> buildMenuItem(String item) => 
  DropdownMenuItem(
      value: item,
      child: Text(item,
          style: TextStyle(fontSize: 20, color: Colors.white)

      )
  )
  ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: AppColors.mainColorLight,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),

        child: DropdownButton(
          dropdownColor: AppColors.mainColorLight,


              underline: SizedBox(),
              icon: Align(
                alignment: Alignment.centerRight,
                  child: Icon(Icons.keyboard_arrow_down, color: Colors.white)),

              iconSize: 30,
              //value:  dropdownvalue,
              items: items.map(buildMenuItem).toList(),
            // {
            //     return DropdownMenuItem(
            //       value: items,
            //       child: Text(items),
            //     );
            //   }).toList(),
          value: value,
              onChanged: (value) {
                setState(() {
                  this.value= value as String?;
                });
              },
              hint: Text(
                "#xxxxx - Sybsidized loan",
                style: TextStyle(fontSize: 20, color: Colors.white, )
              ),
            ),
      ),
    );
  }
}
