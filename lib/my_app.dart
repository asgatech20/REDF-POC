import 'package:flutter/material.dart';
import 'package:redf/cubit/home_cubit.dart';
import 'package:redf/cubit/language_cubit.dart';
import 'package:redf/home/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LanguageCubit()),
        BlocProvider(create: (context) => HomeCubit())
      ],
      child: BlocBuilder<LanguageCubit, Locale>(
        builder: (context, local) {
          context.read<LanguageCubit>().updateAppLangFromStorage();
          return MaterialApp(
            onGenerateTitle: (context) {
              var tr = AppLocalizations.of(context)!;
              return tr.apptitle;
            },
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: local,
            home: HomeScreen(),
            initialRoute: '/',
          );
        },
      ),
    );
  }
}