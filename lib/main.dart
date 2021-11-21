import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:zoomdrawer/screens/PaymentScreen.dart';
import 'package:zoomdrawer/screens/aboutScreen.dart';
import 'package:zoomdrawer/screens/helpScreen.dart';
import 'package:zoomdrawer/screens/menuItemsScreens.dart';
import 'package:zoomdrawer/screens/menuScreen.dart';
import 'package:zoomdrawer/screens/notificationScreen.dart';
import 'package:zoomdrawer/screens/promoScreen.dart';
import 'package:zoomdrawer/screens/rateScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MenuItem currentItem = MenuItems.payment;

  getScreen() {
    switch (currentItem) {
      case MenuItems.payment:
        return PaymentPage();
      case MenuItems.promos:
        return PromoScreen();
      case MenuItems.notification:
        return NotificationScreen();
      case MenuItems.help:
        return HelpScreen();
      case MenuItems.aboutUS:
        return AboutScreen();
      case MenuItems.rateUs:
        return RatingScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.Style1,
      borderRadius: 40,
      angle: -10,
      showShadow: true,
      slideWidth: MediaQuery.of(context).size.width * 0.8,
      backgroundColor: Colors.orangeAccent,
      mainScreen: getScreen(),
      menuScreen: Builder(
        builder: (context) => MenuPage(
            currentItems: currentItem,
            onSelectedItem: (item) {
              setState(() => currentItem = item);

              ZoomDrawer.of(context)!.close();
            }),
      ),
    );
  }
}
