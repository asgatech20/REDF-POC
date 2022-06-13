import 'package:flutter/material.dart';
import 'package:redf/constants/style.dart';
import 'package:redf/cubit/app_cubit.dart';
import 'package:redf/cubit/home_cubit/home_cubit.dart';
import 'package:redf/home/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppCubit()),
        BlocProvider(create: (context) => HomeCubit()),
      ],
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, local) {
          // context.read<AppCubit>().updateAppLangFromStorage();
          var cubit = context.read<AppCubit>();
          print('cafsfsdfwsaffsagsagsgsa');
          return MaterialApp(
            theme: Styles.themeData(cubit.isDark),
            onGenerateTitle: (context) {
              var tr = AppLocalizations.of(context)!;
              return tr.apptitle;
            },
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: cubit.locale,
            home: HomeScreen(),
            initialRoute: '/',
          );
        },
      ),
    );
  }
}