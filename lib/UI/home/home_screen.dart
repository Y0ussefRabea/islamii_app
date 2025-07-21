import 'package:flutter/material.dart';
import 'package:islami/UI/home/tabs/hadeeth/hadeeth_tab.dart';
import 'package:islami/UI/home/tabs/quraan/quraan_tab.dart';
import 'package:islami/UI/home/tabs/radio/radio_tab.dart';
import 'package:islami/UI/home/tabs/sebha/sebha_tab.dart';
import 'package:islami/UI/home/tabs/time/time_tab.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<String> backgroundImages = [
    AppAssets.quraanBG,
    AppAssets.hadeethBG,
    AppAssets.sebhaBG,
    AppAssets.radioBG,
    AppAssets.timeBG,
  ];
  List<Widget> tabs = [
    QuraanTab(),
    HadeethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          backgroundImages[selectedIndex],
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.whiteColor,
            unselectedItemColor: AppColors.blackColor,
            backgroundColor: AppColors.primaryColor,
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              buildNavigationItem(
                label: 'Quraan',
                itemIconPath: AppAssets.quraanIcon,
                index: 0,
              ),
              buildNavigationItem(
                label: 'Hadeeth',
                itemIconPath: AppAssets.hadeethIcon,
                index: 1,
              ),
              buildNavigationItem(
                label: 'Sebha',
                itemIconPath: AppAssets.sebhaIcon,
                index: 2,
              ),
              buildNavigationItem(
                label: 'Radio',
                itemIconPath: AppAssets.radioIcon,
                index: 3,
              ),
              buildNavigationItem(
                label: 'Time',
                itemIconPath: AppAssets.timeIcon,
                index: 4,
              ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AppAssets.islamiLogo),
              Expanded(child: tabs[selectedIndex]),
            ],
          ),
        ),
      ],
    );
  }

  BottomNavigationBarItem buildNavigationItem({
    required String label,
    required String itemIconPath,
    required int index,
  }) {
    return BottomNavigationBarItem(
      label: label,
      icon: selectedIndex == index
          ? Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                color: AppColors.blackBGColor,
              ),
              child: ImageIcon(AssetImage(itemIconPath)),
            )
          : ImageIcon(AssetImage(itemIconPath)),
    );
  }
}
