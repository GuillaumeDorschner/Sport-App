import 'package:flutter/material.dart';

class StatsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stats'),
      ),
      body: Center(
        child: Text('This is the Stats page'),
      ),
    );
  }
}