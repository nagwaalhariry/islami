import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadeth/hadeth_tab.dart';
import 'package:islami/ui/home/quran/quran_tab.dart';
import 'package:islami/ui/home/radio/radio_tab.dart';
import 'package:islami/ui/home/tasbeh/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill,

          )
      ),
      child: Scaffold(

        appBar: AppBar(
          title: Text('islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTabIndex,
          onTap: (index) {
            setState(() {
              selectedTabIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(backgroundColor: Theme
                .of(context)
                .primaryColor,
                icon: ImageIcon(AssetImage('assets/images/moshaf_gold.png')),
                label: 'quran'),
            BottomNavigationBarItem(backgroundColor: Theme
                .of(context)
                .primaryColor,
                icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                label: 'hadeth'),
            BottomNavigationBarItem(backgroundColor: Theme
                .of(context)
                .primaryColor,
                icon: ImageIcon(AssetImage('assets/images/radio_blue.png')),
                label: 'radio'),
            BottomNavigationBarItem(backgroundColor: Theme
                .of(context)
                .primaryColor,
                icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                label: 'sebha'),


          ],
        ),
        body: tabs[selectedTabIndex],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    RadioTab(),
    TasbehTab(),
  ];
}