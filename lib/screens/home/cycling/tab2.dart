import 'package:fitnessapp/screens/home/cycling/cycling_burn.dart';
import 'package:fitnessapp/screens/home/cycling/cycling_goal.dart';
import 'package:fitnessapp/widgets/widget.dart';
import 'package:flutter/material.dart';
class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> with

    SingleTickerProviderStateMixin {
  List<Widget> _tabList = [cycling_burn(), Cycling_goal()];
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

