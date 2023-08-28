import 'package:bubble_tea_app/models/drink.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;
  const OrderPage({
    super.key,
    required this.drink,
  });

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  //customize sweetness
  double sweetValue = 0.5;
  void customizeSweet(double newValue) {
    setState(() {
      sweetValue = newValue;
    });
  }

  //customize ice
  double iceValue = 0.5;
  void customizeIce(double newValue) {
    setState(() {
      sweetValue = newValue;
    });
  }

  //customize pearls
  double pearlValue = 0.5;
  void customizePearl(double newValue) {
    setState(() {
      sweetValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.drink.name)),
      backgroundColor: Colors.brown[200],
      body: Column(
        children: [
          //drink image
          Image.asset(widget.drink.imagePath),

          //sliders to customize drink
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                //sweetness slider
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      child: Text('Sweet'),
                    ),
                    Expanded(
                      child: Slider(
                        value: sweetValue,
                        label: sweetValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizeSweet(value),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      child: Text('Ice'),
                    ),
                    Expanded(
                      child: Slider(
                        value: iceValue,
                        label: iceValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizeIce(value),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      child: Text('Pearls'),
                    ),
                    Expanded(
                      child: Slider(
                        value: pearlValue,
                        label: pearlValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizePearl(value),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          //add to cart button
        ],
      ),
    );
  }
}
