import 'package:flutter/material.dart';
import 'package:redf/constants/widgets.dart';
import 'package:redf/constants/app_colors.dart';
import 'dropdownlist.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.appBackground,
      body: Container(
        color: AppColors.appBackground,
        child: Stack(
          children: [
            buildFullWidthImage(context, 'assets/background2.png'),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/home/usersmall.png',
                            scale: 0.8),
                            Container(
                              margin: const EdgeInsets.only(left: 10,right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      child:const DefaultTextStyle(
                                        style: TextStyle(fontSize: 18),
                                        child: Text('Hello, UserData.name'),
                                      )   ),
                                  Container(
                                      child:const DefaultTextStyle(
                                        style: TextStyle(fontSize: 12),
                                        child: Text('Thu. 25 Sep, 2022'),
                                      )   ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Image.asset('assets/home/notifications.png'),
                        ),
                      ],
                    ),
                  ),
                  DropDownList(),
                  Container(
                    height: 66,
                    margin: EdgeInsets.only(top: 15,right: 10, left: 10),
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
                                    children: const [
                                      DefaultTextStyle(
                                        style: TextStyle(fontSize: 12),
                                        child: Text('Next installment:'),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                    DefaultTextStyle(
                                    style: TextStyle(fontSize: 12),
                                   child: Text('xxxxxx',style: TextStyle(fontWeight: FontWeight.bold),),
                                     ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      DefaultTextStyle(
                                        style: TextStyle(fontSize: 12),
                                        child: Text('KSA'),
                                      ),
                                      ]
                                  ),
                                  SizedBox(
                                    height: 5,
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
                              margin: EdgeInsets.only(right: 10),
                              child: Row(
                               // mainAxisAlignment: MainAxisAlignment.start,
                                children: const [

                                  DefaultTextStyle(
                                    style: TextStyle(fontSize: 16),
                                    child: Text('Pay Now'),
                                  ),
                              SizedBox(
                                width: 10,
                              ),
                                  Icon(Icons.arrow_forward_ios,color: Colors.white,),
                                ],

                              ),
                            )
                          ],
                        ),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}