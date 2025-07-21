import 'package:flutter/material.dart';

import '../../../../utils/app_assets.dart';
import '../../../../utils/app_text_styles.dart';

class SuraItem extends StatelessWidget {
  String suraNumber;
  String englishSuraName;
  String arabicSuraName;
  String suraVerses;

  SuraItem({
    required this.suraNumber,
    required this.arabicSuraName,
    required this.englishSuraName,
    required this.suraVerses,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(AppAssets.suraIcon),
          Text(suraNumber, style: AppTextStyles.bold16White),
        ],
      ),
      title: Text(englishSuraName, style: AppTextStyles.bold20White),
      subtitle: Text('$suraVerses verses', style: AppTextStyles.bold20White),
      trailing: Text(arabicSuraName, style: AppTextStyles.bold20White),
    );
  }
}
