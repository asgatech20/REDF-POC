import 'package:flutter/material.dart';
import 'package:redf/constants/app_colors.dart';
import 'package:redf/constants/widgets.dart';


//home profile content
class ProfileScreenButtons extends StatefulWidget {
  const ProfileScreenButtons({Key? key}) : super(key: key);

  @override
  State<ProfileScreenButtons> createState() => _ProfileScreenButtonsState();
}

class _ProfileScreenButtonsState extends State<ProfileScreenButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildRectangularButton(context, "Change Password", Icons.lock),
        // need constant file for strings , pass the action
        Container(
          margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
          height: 57,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: const EdgeInsets.only(left: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              label: Container(
                alignment: Alignment.centerLeft,
                child: const Text('Send Feedback',
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
        buildRectangularButton(context, 'About App', Icons.error),
        buildRectangularButton(context, 'Call Us', Icons.call),
        Container(
          height: 115,
          margin: const EdgeInsets.only(bottom: 20),
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, top: 10),
                child: const Icon(Icons.language,
                  size: 24,
                  color: AppColors.mainColor,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 60, top: 12),
                child: const Text(
                  '  Language                                              ',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 55, left: 40),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          width: 153,
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
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 55, left: 8),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                            color: AppColors.appBackground,
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          width: 153,
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
                    ),
                  ),
                ],

              ),

            ],
          ),
        ),
        buildRectangularButton(context, 'Sign Out', Icons.login_outlined),
      ],
    );
  }
}


