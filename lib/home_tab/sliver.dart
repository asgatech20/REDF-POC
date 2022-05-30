import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redf/constants/strings.dart';
import 'package:redf/constants/widgets.dart';
import 'package:redf/constants/app_colors.dart';
import 'dropdownlist.dart';

class sliver extends StatefulWidget {
  const sliver({Key? key}) : super(key: key);

  @override
  State<sliver> createState() => _sliverState();
}

class _sliverState extends State<sliver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: ContinuousRectangleBorder(
      borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(125), bottomRight: Radius.circular(125))),
            pinned: true,
            backgroundColor: AppColors.mainColor,
            expandedHeight: 400,
            collapsedHeight: 220,
            floating: true,


            title: //Stack(
                //mainAxisSize: MainAxisSize.min,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
              //  children: [
                     // Container(
                    //margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    //child:
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/usersmall.png',
                                scale: 0.8),
                            Container(
                              margin: const EdgeInsets.only(left: 10,
                                  right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      child: const DefaultTextStyle(
                                        style: TextStyle(fontSize: 18),
                                        child: Text('Hello, UserData.name'),
                                      )),
                                  Container(
                                      child: const DefaultTextStyle(
                                        style: TextStyle(fontSize: 12),
                                        child: Text('Thu. 25 Sep, 2022'),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Image.asset('assets/notifications.png'),
                        ),
                      ],
                    ),
                //  ),
              //  ]
           // ),
            flexibleSpace: FlexibleSpaceBar(
             // background: Image(image: AssetImage('assets/background2.png')),
              title: Container(
                width: MediaQuery.of(context).size.width,
              //  margin: EdgeInsets.only(top: 50),
                  child: Stack(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(bottom: 20),
                          child: DropDownList()),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 66,
                  margin: EdgeInsets.only(top: 57,right: 10, left: 10, bottom: 15),
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
              centerTitle: true,
            ),
            ),

          //buildRectangularButton(context, Strings.aboutApp, Icons.error),
          buildImage(),

        ],
      ),
    );
  }
    Widget buildImage() => SliverToBoxAdapter(
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          primary: false,
          shrinkWrap: true,
          itemCount: 20,
        itemBuilder: (context, index) => ImageWidget(index: index, key: null!,),
      ),
    );
  }


class ImageWidget extends StatelessWidget {
  final int index;

  const ImageWidget({
    required Key key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    height: 150,
    width: double.infinity,
    child: Card(
      child: Image.network(
        'https://source.unsplash.com/random?sig=$index',
        fit: BoxFit.cover,
      ),
    ),
  );
}