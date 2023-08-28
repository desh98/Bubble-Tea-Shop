import 'package:bubble_tea_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //heading
              Text(
                "Bubble Tea Shop",
                style: TextStyle(fontSize: 20),
              ),

              //list of drinks for sale
              Expanded(
                child: ListView.builder(
                  itemCount: value.shop.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(value.shop[index].name),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}