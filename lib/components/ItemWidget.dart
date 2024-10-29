import 'package:flutter/material.dart';
import 'package:project_name/models/item_class.dart';

class ItemWidget extends StatelessWidget {
  final ItemClass item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(item.imagePath),
      title: Text(item.title),
      subtitle: Text(item.shortDescription),
    );
  }
}
