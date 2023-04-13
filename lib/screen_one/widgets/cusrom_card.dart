import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/mytheme.dart';

class CustomCard extends StatelessWidget {
  String num;
  String label;
   CustomCard({Key? key,required this.num,required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width*.14,
      height:Get.height*.08,
      child: Card(
          color: MyTheme.yellow,
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                num,
                style: MyTheme.regularTextStyle(
                    color: MyTheme.white,
                    textSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              FittedBox(
                child: Text(
                 label,
                  style: MyTheme.regularTextStyle(
                      color: MyTheme.white,
                      textSize: 8,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          )),
    );
  }
}
