import 'package:flutter/material.dart';

class TrainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;  // Accessing the primary color from the theme

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,  // Use the primary color from the theme for the AppBar
        title: Text('Train'),
      ),
      body: Center(
        child: Text('This is the Train page'),
      ),
    );
  }
}
