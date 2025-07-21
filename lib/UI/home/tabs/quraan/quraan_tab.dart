import 'package:flutter/material.dart';
import 'package:islami/UI/home/tabs/quraan/quraan_resources.dart';
import 'package:islami/UI/home/tabs/quraan/sura_item.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_text_styles.dart';

class QuraanTab extends StatelessWidget {
  const QuraanTab({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: height * 0.01,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            style: AppTextStyles.bold16White,
            cursorColor: AppColors.offwhiteColor,
            decoration: InputDecoration(
              prefixIcon: Image.asset(AppAssets.quraanIconSearch),
              hintText: 'Sura Name',
              hintStyle: AppTextStyles.bold16White,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: AppColors.primaryColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: AppColors.primaryColor),
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Text('Most Recently', style: AppTextStyles.bold16White),
          SizedBox(height: height * 0.01),
          SizedBox(
            height: height * 0.15,
            width: double.infinity,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02,
                    vertical: height * 0.01,
                  ),
                  height: 150,
                  width: width * 0.65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.primaryColor,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Al-Anbiaa', style: AppTextStyles.bold24Black),
                          Text('الأنبياء', style: AppTextStyles.bold24Black),
                          Text('112 Verses', style: AppTextStyles.bold14Black),
                        ],
                      ),
                      Image.asset(AppAssets.mostRecentlyBG),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: width * 0.02);
              },
              itemCount: 5,
            ),
          ),
          SizedBox(height: height * 0.01),
          Text('Suras List', style: AppTextStyles.bold16White),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return SuraItem(
                  suraNumber: '${index + 1}',
                  arabicSuraName: QuraanResources.arabicSurahName[index],
                  englishSuraName: QuraanResources.englishSurahName[index],
                  suraVerses: QuraanResources.versesNumber[index],
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 1,
                  indent: width * 0.11,
                  endIndent: width * 0.11,
                );
              },
              itemCount: 114,
            ),
          ),
        ],
      ),
    );
  }
}
