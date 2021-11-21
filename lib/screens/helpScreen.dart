import 'package:flutter/material.dart';
import 'package:zoomdrawer/screens/menuwidget.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('help Screen'),
        leading: MenuWidget(),
      ),
    );
  }
}
