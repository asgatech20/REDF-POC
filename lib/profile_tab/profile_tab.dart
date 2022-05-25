import 'package:flutter/material.dart';
import 'package:redf/constants/app_colors.dart';
import 'package:redf/constants/strings.dart';
import 'package:redf/constants/widgets.dart';

import 'language_enum.dart';

/// fix file name  "DONE"

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  var selectedCategory = CategoryEnum.English;
  bool click = true;
  bool click1 = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          /// need to add comment to desc the role of this view                    "DONE"
         ///build one function for the below 2 images, just pass image name         "DONE"
          buildFullWidthImage(context, 'assets/white_profile_background.png'),  // White background of the profile screen
          buildFullWidthImage(context, 'assets/profile_appbar.png'),  // top green appbar in the profile screen
          /// build function for this view   "DONE"
          Align(
            alignment: Alignment.topRight,
            child: onPlanButton(),
          ),
          /// build function for this view
          Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 80),
                  child: Image.asset('assets/user.png')  //image of the user
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text('userData.name',           //name of the user
                  style: TextStyle(fontSize: 18),),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10 ),
                child: const Text('userData.email',          //email of the user
                  style: TextStyle(fontSize: 12),),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 30),
                child: Column(
                    children: [
                      Stack(
                          children: [
                            Container(
                                alignment: Alignment.center,
                                child: Image.asset('assets/updateprofile.png')      //background of the "update profile >" button
                            ),
                            Container(
                                margin: const EdgeInsets.only(bottom: 10,top: 25,left: 100,right: 100),
                                child: const Text(Strings.profileUpdate,
                                  style: TextStyle(color: Colors.white,fontSize: 15),)),
                          ]
                      ),
                    ]
                ),
              ),

               Flexible(
                child:SingleChildScrollView(
                  child: Column(
                    children: [
                      buildRectangularButton(context, Strings.changePassword, Icons.lock),
                      // need constant file for strings , pass the action
                      Container(
                        margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                        height: 57,
                        // width: MediaQuery
                        //     .of(context)
                        //     .size
                        //     .width,
                        child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              padding: const EdgeInsets.only(left: 20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            label: Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(Strings.sendFeedback,
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.black54),
                              ),
                            ),
                            icon: const ImageIcon(
                              AssetImage("assets/like.png"),
                              color: AppColors.mainColor,),
                            onPressed: () {}
                        ),
                      ),
                      // overload the prev function to change the param of icon
                      buildRectangularButton(context, Strings.aboutApp, Icons.error),
                      buildRectangularButton(context, Strings.callUs, Icons.call),
                      Container(
                        height: 115,
                        margin: const EdgeInsets.only(bottom: 20, left: 18, right: 18),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 2,
                                  ),
                                ],
                              ),

                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 18, top: 12),
                              child: Row(
                                children: [
                                  Container(
                                    child: const Icon(Icons.language,
                                      size: 24,
                                      color: AppColors.mainColor,
                                    ),
                                  ),
                              Container(
                                child: const Text(
                                  '  Language                                              ',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                                ],
                              ),
                            ),
                            Container(
                               margin: const EdgeInsets.only(top: 55),
                              padding: EdgeInsets.symmetric(horizontal: 18),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20))
                                      ),
                                      child: Ink(
                                        decoration: BoxDecoration(
                                            color: selectedCategory == CategoryEnum.English ? AppColors.mainColor : Colors.grey,
                                            borderRadius: BorderRadius.circular(30)),
                                        child: Container(
                                         // margin: EdgeInsets.symmetric(horizontal: 20),
                                          width: (MediaQuery.of(context).size.width - 86)/2,
                                          height: 40,
                                          alignment: Alignment.center,
                                          child: const Text(
                                            'English',
                                            style: TextStyle(fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      onPressed: () //async
                                           {
                                      setState(() {
                                       selectedCategory = CategoryEnum.English;
                                       click = !click;
                                       click1 = false;
                                       });}
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only( left: 10),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20))
                                      ),
                                      child: Ink(
                                        decoration: BoxDecoration(
                                            color: selectedCategory == CategoryEnum.Arabic ? AppColors.mainColor : Colors.grey,
                                            borderRadius: BorderRadius.circular(30)),
                                        child: Container(

                                          width: (MediaQuery.of(context).size.width - 86)/2,
                                          height: 40,
                                          alignment: Alignment.center,
                                          child: const Text(
                                            'Arabic',
                                            style: TextStyle(fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                        onPressed: () //async
                                        {
                                          setState(() {
                                            selectedCategory = CategoryEnum.Arabic;
                                            click = !click;
                                            click1 = true;
                                          });}
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      buildRectangularButton(context, Strings.signOut, Icons.login_outlined),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]
    );
  }
}

