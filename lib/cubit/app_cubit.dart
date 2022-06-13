import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  late Locale locale;
  late bool isDark;
  AppCubit() : super(AppInitial()){
    isDark = false;
    locale = const Locale('en');
    // updateAppLangFromStorage();
    // updateAppThemeFromStorage();
  }

  void updateAppLangFromStorage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? langCode = prefs.getString('lang');
    if (langCode != null) {
      locale = Locale(langCode);
      emit(ChangeLanguage());
    }
  }

  void changeLang(context, String data) async {
    locale = Locale(data);
    emit(ChangeLanguage());
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('lang', data);
  }

  void updateAppThemeFromStorage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? langCode = prefs.getBool('isDark');
    if (langCode != null) {
      isDark = langCode;
      emit(ChangeTheme());
    }
  }

  void changeTheme( bool isDark) async {
    this.isDark = isDark;
    emit(ChangeTheme());
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDark', isDark);
  }
}
