import 'package:fitnessapp/screens/home/running/running_burn.dart';
import 'package:fitnessapp/screens/home/running/running_goal.dart';
import 'package:fitnessapp/widgets/widget.dart';
import 'package:flutter/material.dart';
class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> with

    SingleTickerProviderStateMixin {
  List<Widget> _tabList = [RunningBurn(), Running_goal()];
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

