import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ui_test/utils/mytheme.dart';

import '../../utils/asset_helper.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final onpressedIndex1;
  final onpressedIndex2;
  final onpressedIndex3;
  final onpressedIndex4;

  CustomBottomNavigationBar(
      {Key? key,
      required this.onpressedIndex1,
      required this.onpressedIndex2,
      required this.onpressedIndex3,
      required this.onpressedIndex4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: Get.height*.08,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ///Left side
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            MaterialButton(
              onPressed: onpressedIndex1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AssetHelper.home,scale: .9,),
                  Text('Home',style: MyTheme.regularTextStyle(
                    color: MyTheme.primaryColor2,
                    textSize: 12,
                    fontWeight: FontWeight.w400
                  ),),
                ],
              ),
            ),
            MaterialButton(
              onPressed: onpressedIndex2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AssetHelper.graduation,),
                  Text('My Course',style: MyTheme.regularTextStyle(
                    color: MyTheme.black,
                    textSize: 12,
                    fontWeight: FontWeight.w400
                  ),),
                ],
              ),
            ),
          ]),

          ///Right side
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            MaterialButton(
              onPressed: onpressedIndex3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AssetHelper.favorite,scale: .9,),
                  Text('Favourite',style: MyTheme.regularTextStyle(
                      color: MyTheme.black,
                      textSize: 12,
                      fontWeight: FontWeight.w400
                  ),),
                ],
              ),
            ),
            MaterialButton(
              onPressed: onpressedIndex4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AssetHelper.note,scale: .9,),
                  Text('My Note',style: MyTheme.regularTextStyle(
                      color: MyTheme.black,
                      textSize: 12,
                      fontWeight: FontWeight.w400
                  ),),
                ],
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
