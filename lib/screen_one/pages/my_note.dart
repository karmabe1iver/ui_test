import 'package:flutter/material.dart';

import '../../utils/mytheme.dart';

class MyNote extends StatelessWidget {
  const MyNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('MyNote Coming Soon....',style: MyTheme.regularTextStyle(
            color: MyTheme.black,
            fontWeight: FontWeight.w500
        ),),
      ),
    );;
  }
}
