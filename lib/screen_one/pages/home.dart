import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ui_test/model/winners_model.dart';
import 'package:ui_test/screen_one/widgets/cusrom_card.dart';
import 'package:ui_test/utils/asset_helper.dart';

import '../../utils/mytheme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(left: Get.width*.068, top: Get.height*.05),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Wrap(
            direction: Axis.horizontal,
            spacing: 10,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Image.asset(
                  AssetHelper.arrowbackward,
                  scale: .9,
                ),
              ),
              Text(
                'Quiz',
                style: MyTheme.regularTextStyle(
                    color: MyTheme.black,
                    textSize: 20,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
            height: 28,
          ),
          Text(
            'Hello,',
            style: MyTheme.regularTextStyle(
              color: MyTheme.black,
              fontWeight: FontWeight.w600,
              textSize: 30,
            ),
          ),
          Text(
            'Let\'s Start Quiz',
            style: MyTheme.regularTextStyle(
              color: MyTheme.black,
              fontWeight: FontWeight.w600,
              textSize: 30,
            ),
          ),
          SizedBox(
            height: Get.height*.018,
          ),
          Container(
            width: Get.width*.87,
            height:Get.height*.20,
            child: Image.asset(
              AssetHelper.quizpic,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Winner\'s',
                  style: MyTheme.regularTextStyle(
                    color: MyTheme.black,
                    textSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: Get.width*.068),
                  child: Image.asset(
                    AssetHelper.arrowforward,
                    scale: .9,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: Get.height*.18,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: winners.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding:  EdgeInsets.only(top:Get.height*.014, right: 28),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: Get.height*.115,
                            ),
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage(winners[index].Dp),
                            ),
                            Positioned(
                                bottom:Get.height*.001,
                                left: 10,
                                right: 10,
                                child: Image.asset(winners[index].Rank)),
                          ],
                        ),
                        Text(
                          winners[index].name,
                          style: MyTheme.regularTextStyle(
                            color: MyTheme.black,
                            fontWeight: FontWeight.w400,
                            textSize: 12,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Text(
            'Popular Super Quiz',
            style: MyTheme.regularTextStyle(
              color: MyTheme.black,
              textSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: Get.height*.024,
          ),
          Container(
            width:Get.width*.87,
            height: Get.height*.26,
            decoration: BoxDecoration(
              color: MyTheme.yellow,
              boxShadow: [
                BoxShadow(
                  offset: Offset.zero,
                  color: Colors.grey.shade300,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 10,
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: Get.width*.038,
                  bottom: 0,
                  child: Image.asset(
                    AssetHelper.studentlearning,
                    scale: .9,
                  ),
                ),
                Positioned(
                    left: 24,
                    top: Get.height*.024,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Personality Quiz ',
                          style: MyTheme.regularTextStyle(
                              color: MyTheme.white,
                              textSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'This Quiz Starts on ',
                          style: MyTheme.regularTextStyle(
                            color: MyTheme.white,
                            textSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                          CustomCard(num: "11", label: "Days"),
                            CustomCard(num: "01", label: "Months"),
                            CustomCard(num: "23", label: "Year")
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                      ],
                    )),
                Positioned(
                  left: 12,
                  bottom: 12,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                        color: MyTheme.black2,
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Center(
                        child: Text('PLAY QUIZ NOW',style:MyTheme.regularTextStyle(
                          color: MyTheme.white,
                          fontWeight: FontWeight.w400,
                          textSize: 12
                        ),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
