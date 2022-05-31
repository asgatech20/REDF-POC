import 'package:flutter/material.dart';
import 'package:redf/constants/app_colors.dart';
import 'package:redf/home_tab/home_tab.dart';
import 'package:redf/profile_tab/profile_tab.dart';
import 'package:redf/temp/mycontracts.dart';
import 'package:redf/temp/orders.dart';
import 'package:redf/temp/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 4;
  final screens = [
    const HomeTab(),
    const services(),
    const Contracts(),
    const orders(),
    const ProfileTab(),
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; ///comment check if it is the best way
    return Scaffold(
         body:Stack(
             children:[
               Padding(
                 padding: const EdgeInsets.only(bottom: 68),
                 child: screens[currentIndex],
               ),
               Align(
                   alignment: Alignment.bottomCenter,
                   child: buildCustomBottomNavBar(size))
             ]
         ),
      );
  }
  Widget buildCustomBottomNavBar(Size size) {
    var tr = AppLocalizations.of(context)!;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ///design issue
        // CustomPaint(
        //   size: Size(size.width, 20),
        //   painter: BABcustompainter(),
        // ),
        Container(
          width: double.infinity,
          height: 90,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bottom_app_bar_bg.png"),
              fit: BoxFit.cover,
            ),
          ) ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Center()
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: BottomNavigationBar(
                  elevation: 0,
                  currentIndex: currentIndex,
                  onTap: (index) =>
                      setState(() =>
                   currentIndex = index),
                  backgroundColor: Colors.transparent,
                  iconSize: 25,
                  selectedItemColor: AppColors.mainColor,
                  type: BottomNavigationBarType.fixed,
                  items:   [
                    BottomNavigationBarItem(icon: const ImageIcon(
                      AssetImage("assets/ic_home.png"),
                    ), label: tr.home,
                    ),
                    BottomNavigationBarItem(
                        icon: const ImageIcon(
                          AssetImage("assets/ic_services.png"),
                        ), label: tr.services),
                    BottomNavigationBarItem(
                        icon: const ImageIcon(
                          AssetImage("assets/ic_contracts.png"),
                        ), label: tr.mycontract),
                    BottomNavigationBarItem(
                        icon: const ImageIcon(
                          AssetImage("assets/ic_orders.png"),
                        ), label: tr.myorders),
                    BottomNavigationBarItem(
                        icon: const ImageIcon(
                          AssetImage("assets/ic_profile.png"),
                        ), label: tr.profile),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
