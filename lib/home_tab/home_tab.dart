import 'package:flutter/material.dart';
import 'package:redf/constants/app_colors.dart';
import 'package:redf/constants/widgets.dart';
import 'dropdownlist.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';




class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;
    return Container(
      color: AppColors.appBackground,
      child: Stack(
       // extendBodyBehindAppBar: true,
       // backgroundColor: AppColors.appBackground,
        children: [
          buildFullWidthImage(context, 'assets/white_profile_background.png'),
          buildFullWidthImage(context, 'assets/background2.png'),
           Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50, left: 10,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/usersmall.png',
                        scale: 0.8),
                        Container(
                          margin: const EdgeInsets.only(left: 10,right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                               Row(
                                 children:  [
                                   DefaultTextStyle(
                                    style: TextStyle(fontSize: 18),
                                    child: Text(tr.hello),
                              ),
                                   const DefaultTextStyle(
                                     style: TextStyle(fontSize: 18),
                                     child: Text('UserData.name'),
                                   ),
                                 ],
                               ),
                              const DefaultTextStyle(
                                style: TextStyle(fontSize: 12),
                                child: Text('Thu. 25 Sep, 2022'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/notifications.png'),
                  ],
                ),
              ),
              const DropDownList(),
              Container(
                height: 66,
                margin: const EdgeInsets.only(top: 15,right: 10, left: 10,bottom: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: AppColors.mainColorLight,
                ),
                child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18,right: 18,top: 10,bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:  [
                                  DefaultTextStyle(
                                    style: TextStyle(fontSize: 12),
                                    child: Text(tr.installment),
                                  ),
                                  const SizedBox(
                                    width: 1,
                                  ),
                                const DefaultTextStyle(
                                style: TextStyle(fontSize: 12),
                               child: Text('xxxxxx',style: TextStyle(fontWeight: FontWeight.bold),),
                                 ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                   DefaultTextStyle(
                                    style: const TextStyle(fontSize: 12),
                                    child: Text(tr.currency),
                                  ),
                                  ]
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Icon(Icons.calendar_today,color: Colors.white,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  DefaultTextStyle(
                                    style: TextStyle(fontSize: 18),
                                    child: Text('5/24/2022'),
                                  )
                                ],

                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: Row(
                           // mainAxisAlignment: MainAxisAlignment.start,
                            children:  [

                              DefaultTextStyle(
                                style: TextStyle(fontSize: 16),
                                child: Text(tr.paynow),
                              ),
                          const SizedBox(
                            width: 10,
                          ),
                              Icon(Icons.arrow_forward_ios,color: Colors.white,),
                            ],
                          ),
                        )
                      ],
                    ),
              ),
              Flexible(
                child:SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ServiceSelectButton(),
                          ServiceSelectButton(),
                          ServiceSelectButton(),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            ServiceSelectButton(),
                            ServiceSelectButton(),
                            ServiceSelectButton(),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            ServiceSelectButton(),
                            ServiceSelectButton(),
                            ServiceSelectButton(),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30,bottom: 20, left: 10,right: 10),
                         alignment: AlignmentDirectional.centerStart,
                         child: Text(tr.yourorders,
                        style: TextStyle(fontSize: 20),),
                      ),

                    ],
                  ),
                ),
              ),




            ],
          ),







        ]
      ),
    );
  }

  Container ServiceSelectButton() {
    var tr = AppLocalizations.of(context)!;
    return Container(
                          margin: EdgeInsets.only(left:8, top: 15,right: 8),
                          height: 140,
                          width: 120,

                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                             // primary: Colors.white,

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),),

                            onPressed: () => {},
                            child: Column( // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                 const ImageIcon(
                                  AssetImage("assets/click.png"),
                                  size: 80,
                                  color: AppColors.mainColor,),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(tr.forcolsuer,
                                    style: TextStyle(color: Colors.black),
                                    textAlign: TextAlign.center,
                                    ),
                                ),
                              ],
                            ),
                          ),
                        );
  }
}
