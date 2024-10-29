import 'package:flutter/material.dart';
import 'package:project_name/components/item.dart';
import 'package:project_name/models/item_class.dart';
import 'package:project_name/components/ItemWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ItemClass> items = [
    ItemClass(
      1,
      'assets/images/15.png',  // Исправлено на 'images'
      7,
      'Cosmos Atom',
      'Это нативная монета экосистемы Cosmos Hub, используемая в механизме консенсуса сети, а также для оплаты комиссий за транзакции и участия в управлении.',
      'Нативная монета экосистемы Cosmos Hub, используемая для различных целей.',
    ),
    ItemClass(
      2,
      'assets/images/image.png',  // Исправлено на 'images'
      70,
      'LTC',
      'Форк Bitcoin, пиринговая электронная платёжная система, использующая одноимённую криптовалюту.',
      'Платёжная система, использующая криптовалюту LTC.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cryptocurrency Market'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: items[index]);
        },
      ),
    );
  }
}
