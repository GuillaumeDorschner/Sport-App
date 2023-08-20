import 'package:flutter/material.dart';

class StatsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(59, 59, 58, 1),
        title: Text('Stats'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.0, 1.0],
            colors: [
              Color.fromARGB(255, 0, 0, 1),
              Color.fromARGB(255, 19, 19, 21),
            ],
          ),
        ),
        child: Center(
          child: Text('This is the Stats page', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}