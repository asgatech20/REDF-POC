import 'package:flutter/material.dart';
import 'package:redf/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          style: const TextStyle(fontSize: 20, color: Colors.white)

      )
  )
  ;

  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: AppColors.mainColorLight,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),

        child: DropdownButton(
          dropdownColor: AppColors.mainColorLight,


              underline: const SizedBox(),
              icon: const Align(
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
              hint:  Text(
                tr.loan,
                style: TextStyle(fontSize: 20, color: Colors.white, )
              ),
            ),
      ),
    );
  }
}
