import 'package:ui_test/utils/asset_helper.dart';

class Winners{
  String Dp;
  String Rank;
  String name;
  Winners ({required this.Dp,required this.Rank,required this.name});
}
List<Winners> winners=[
  Winners(Dp:AssetHelper.gamer , Rank: AssetHelper.medal1,name: 'David James'),
  Winners(Dp: AssetHelper.girl, Rank: AssetHelper.medal2,name: 'Alena Derlin'),
  Winners(Dp: AssetHelper.women, Rank: AssetHelper.medal3,name: 'Madelyn Dais'),
  Winners(Dp: AssetHelper.gamer, Rank: AssetHelper.medal1,name: 'David James'),
  Winners(Dp: AssetHelper.girl, Rank: AssetHelper.medal2,name: 'Alena Derlin'),
  Winners(Dp: AssetHelper.women, Rank: AssetHelper.medal3,name: 'Madelyn Dais'),
];