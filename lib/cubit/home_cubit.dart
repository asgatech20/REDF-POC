import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:redf/home_tab/home_tab.dart';
import 'package:redf/profile_tab/profile_tab.dart';
import 'package:redf/temp/mycontracts.dart';
import 'package:redf/temp/orders.dart';
import 'package:redf/temp/services.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());


  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 4;
  final screens = [
    const HomeTab(),
    const services(),
    const Contracts(),
    const orders(),
    const ProfileTab(),
  ];

  List<BottomNavigationBarItem> bottomNavBarItems(AppLocalizations tr) => [BottomNavigationBarItem(icon: const ImageIcon(
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
  ];

  changeBottomNavBarIndex(int index) {
    currentIndex = index;
    emit(ChangeBottomNavBarState());
  }
}
