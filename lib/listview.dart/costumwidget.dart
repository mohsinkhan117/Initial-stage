import 'package:flutter/material.dart';

class ListviewWidget extends StatelessWidget {
  String title, subtitle;
  IconData leadingIcon, trialingIcon;
  Color? backgroundColor;

  ListviewWidget({
    required this.title,
    required this.subtitle,
    this.leadingIcon = Icons.mouse_outlined,
    this.trialingIcon = Icons.add_shopping_cart_outlined,
    this.backgroundColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ListTile(
        tileColor: backgroundColor,
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(Icons.mouse_outlined),
        trailing: Icon(trialingIcon),
      ),
    );
  }
}
