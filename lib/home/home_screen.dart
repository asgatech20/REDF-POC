import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redf/constants/app_colors.dart';
import 'package:redf/cubit/home_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  late AppLocalizations tr;

  late HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    ///comment check if it is the best way
    tr = AppLocalizations.of(context)!;
    cubit = HomeCubit.get(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return Scaffold(
          body: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 68),
              child: cubit.screens[cubit.currentIndex],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: buildCustomBottomNavBar())
          ]),
        );
      },
    );
  }

  Widget buildCustomBottomNavBar() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          height: 90,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bottom_app_bar_bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Center()
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: BottomNavigationBar(
                  elevation: 0,
                  currentIndex: cubit.currentIndex,
                  onTap: (index) => cubit.changeBottomNavBarIndex(index),
                  backgroundColor: Colors.transparent,
                  iconSize: 25,
                  selectedItemColor: AppColors.mainColor,
                  type: BottomNavigationBarType.fixed,
                  items: cubit.bottomNavBarItems(tr),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
