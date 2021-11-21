import 'package:flutter/material.dart';
import 'package:zoomdrawer/screens/menuwidget.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('about Screen'),
        leading: MenuWidget(),
      ),
    );
  }
}
