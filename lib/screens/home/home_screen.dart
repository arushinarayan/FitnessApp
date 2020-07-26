import 'package:fitnessapp/screens/home/swimming/tab3.dart';
import 'package:fitnessapp/screens/home/cycling/tab2.dart';
import 'package:fitnessapp/screens/home/running/tab1.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with

    SingleTickerProviderStateMixin {
  List<Widget> _tabList = [Tab1(), Tab2(), Tab3()];
  List<Widget> _iconList = [
    Icon(
      MdiIcons.run,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      MdiIcons.bicycle,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      MdiIcons.swim,
      size: 30,
      color: Colors.white,
    ),
  ];
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: _tabList.length,
      vsync: this,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: TabBarView(
          children: _tabList,
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xfff56363),
        height: 50,
        backgroundColor:  Color(0xff171E28),
        animationCurve: Curves.elasticOut,
        buttonBackgroundColor: Color(0xfff56363),
        items: _iconList,
        onTap: (index) {
          setState(() {
            _tabController.animateTo(index);
          });
        },
      ),
    );
  }
}
