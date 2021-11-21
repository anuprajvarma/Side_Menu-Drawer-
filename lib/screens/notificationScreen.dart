import 'package:flutter/material.dart';
import 'package:zoomdrawer/screens/menuwidget.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Notification Screen'),
        leading: MenuWidget(),
      ),
    );
  }
}
