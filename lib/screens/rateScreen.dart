import 'package:flutter/material.dart';
import 'package:zoomdrawer/screens/menuwidget.dart';

class RatingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Rating Screen'),
        leading: MenuWidget(),
      ),
    );
  }
}
