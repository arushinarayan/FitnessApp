import 'package:fitnessapp/services/counter_bloc.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Swimming_goal extends StatefulWidget {
  @override
  _Swimming_goalState createState() => _Swimming_goalState();
}

class _Swimming_goalState extends State<Swimming_goal> {
  String _animationName= "Build";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171E28),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
          Expanded(
          child: FlareActor(
            "assets/Swim.flr",
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: _animationName,
          ),
        ),
          BlocProvider(
           builder: (BuildContext context) => CounterBloc(),
           child : CounterScreen()
    ),
      ],
    ),
      )
    );
  }
}
class CounterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final _counterBloc = BlocProvider.of<CounterBloc>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          BlocBuilder<CounterBloc, double>(
            builder: (BuildContext context, double state){
              return Text("Change in Weight: $state", style: TextStyle(fontSize: 18, color: Colors.white),);
            },
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color:Color(0xfff56363),
                child: Text(
                  "Consume 100 extra calories",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onPressed: (){
                  _counterBloc.add(CounterEvents.increment);
                },
              ),

              RaisedButton(
                color:Color(0xfff56363),
                child: Text(
                  "Swim for 25 mins",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onPressed: (){
                  _counterBloc.add(CounterEvents.decrement);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
