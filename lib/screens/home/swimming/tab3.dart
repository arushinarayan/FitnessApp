import 'package:fitnessapp/screens/home/cycling/cycling_burn.dart';
import 'package:fitnessapp/screens/home/cycling/cycling_goal.dart';
import 'package:fitnessapp/screens/home/swimming/swimming_burn.dart';
import 'package:fitnessapp/screens/home/swimming/swimming_goal.dart';
import 'package:fitnessapp/widgets/widget.dart';
import 'package:flutter/material.dart';
class Tab3 extends StatefulWidget {
  @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> with

    SingleTickerProviderStateMixin {
  List<Widget> _tabList = [Swimming_burn(), Swimming_goal()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor:  Color(0xff171E28),
        appBar: AppBar(
          title: appBar(context),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          brightness: Brightness.light,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Burn',
              ),
              Tab(
                text: 'Calculate',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: _tabList,
        ),
      ),
    );

  }
}

