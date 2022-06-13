import 'package:flutter/material.dart';
import 'app_colors.dart';

Widget buildRectangularButton(BuildContext context, String text, IconData icon) {
  return Container(
    margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
    height: 57,
    width: MediaQuery.of(context).size.width,
    child:
    ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          padding: const EdgeInsets.only(left: 20,right: 20),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
        ),
        label: Container(
          alignment: AlignmentDirectional.centerStart,
          child: Text(text,
            style: const TextStyle(color: Colors.black54),
          ),
        ),
        icon: Icon(icon,
          color: AppColors.mainColor,),
        onPressed: () {}
    ),
  );
}

Widget buildFullWidthImage(BuildContext context, String image) {
  return Image.asset(image,            /// naming not correct
    width: MediaQuery
        .of(context)
        .size
        .width,
    fit: BoxFit.fitWidth,
  );
}

Container onPlanButton() {
  return Container(
    width: 70,
    height: 35,
    margin: const EdgeInsets.only(right: 10, top: 40), //warning
    child: ElevatedButton(

      onPressed: () {},
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20))
      ),
      child: Ink(
        decoration: BoxDecoration(
            color: AppColors.mainColorLight,
            borderRadius: BorderRadius.circular(20)),
        child: Container(

          alignment: Alignment.center,
          child: const Text(
            'On Plan',
            style: TextStyle(fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}
