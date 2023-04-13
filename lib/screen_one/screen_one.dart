import 'package:flutter/material.dart';
import 'package:ui_test/screen_one/pages/favourite.dart';
import 'package:ui_test/screen_one/pages/home.dart';
import 'package:ui_test/screen_one/pages/my_course.dart';
import 'package:ui_test/screen_one/pages/my_note.dart';
import 'package:ui_test/screen_one/widgets/custom_buttomnavigation_bar.dart';
import 'package:ui_test/utils/mytheme.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currenttab = 0;
  final List<Widget> screens = [
    Home(),
    MyCourse(),
    Favourite(),
    MyNote(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentpage = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentpage,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
          'id',
          style:MyTheme.italicTextStyle(color: MyTheme.white,textSize: 26,fontWeight: FontWeight.w600)
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavigationBar(
        onpressedIndex1: () {
          setState(() {
            currentpage = Home();
            currenttab = 0;
          });
        },
        onpressedIndex2: () {
          setState(() {
            currentpage = MyCourse();
            currenttab = 1;
          });
        },
        onpressedIndex3: () {
          setState(() {
            currentpage = Favourite();
            currenttab = 2;
          });
        },
        onpressedIndex4: () {
          setState(() {
            currentpage = MyNote();
            currenttab = 3;
          });
        },
      ),
    );
  }
}
