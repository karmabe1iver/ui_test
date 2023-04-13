import 'package:flutter/material.dart';

import '../../utils/mytheme.dart';

class MyCourse extends StatelessWidget {
  const MyCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('My Course Coming Soon....',style: MyTheme.regularTextStyle(
            color: MyTheme.black,
            fontWeight: FontWeight.w500
        ),),
      ),
    );;
  }
}
