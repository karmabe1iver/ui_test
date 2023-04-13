import 'package:flutter/material.dart';
import 'package:ui_test/utils/mytheme.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Favourite Coming Soon....',style: MyTheme.regularTextStyle(
          color: MyTheme.black,
          fontWeight: FontWeight.w500
        ),),
      ),
    );
  }
}
