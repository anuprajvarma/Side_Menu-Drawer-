import 'package:flutter/material.dart';
import 'package:zoomdrawer/screens/menuItemsScreens.dart';

class MenuItems {
  static const payment = MenuItem('Payment', Icons.payment);
  static const promos = MenuItem('Promo', Icons.card_giftcard);
  static const notification = MenuItem('Notification', Icons.notifications);
  static const help = MenuItem('Help', Icons.help);
  static const aboutUS = MenuItem('About Us', Icons.info_outline);
  static const rateUs = MenuItem('Rate Us', Icons.star_border);

  static const all = <MenuItem>[
    payment,
    promos,
    notification,
    help,
    aboutUS,
    rateUs,
  ];
}

class MenuPage extends StatelessWidget {
  final MenuItem currentItems;
  final ValueChanged<MenuItem> onSelectedItem;

  const MenuPage({
    Key? key,
    required this.currentItems,
    required this.onSelectedItem,
  }) : super(key: key);

  Widget buildMenuItem(MenuItem item) => ListTileTheme(
        selectedTileColor: Colors.white,
        child: ListTile(
          selectedTileColor: Colors.black26,
          selected: currentItems == item,
          leading: Icon(item.icon),
          minLeadingWidth: 20,
          title: Text(item.title),
          onTap: () => onSelectedItem(item),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
            child: Column(
          children: [
            Spacer(),
            ...MenuItems.all.map(buildMenuItem).toList(),
            Spacer(flex: 2),
          ],
        )),
      ),
    );
  }
}
