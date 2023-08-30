import 'package:bubble_tea_app/models/drink.dart';
import 'package:flutter/cupertino.dart';

class BubbleTeaShop extends ChangeNotifier {
  //list of drinks for sale
  final List<Drink> _shop = [
    //pearl milk tea
    Drink(
      name: "Pearl Milk Tea",
      price: "LKR500",
      imagePath: "lib/images/milk_tea.png",
    ),
    Drink(
      name: "Green Tea",
      price: "LKR400",
      imagePath: "lib/images/green_tea.png",
    ),
    Drink(
      name: "Strawberry Bubble Tea",
      price: "LKR750",
      imagePath: "lib/images/strawberry_bubble_tea.png",
    ),
    Drink(
      name: "Cholocolate Milk Tea",
      price: "LKR800",
      imagePath: "lib/images/chocolate_milk_tea.png",
    ),
    Drink(
      name: "Coffee Boba",
      price: "LKR600",
      imagePath: "lib/images/coffee_boba.png",
    ),
    Drink(
      name: "Taro Milk Tea",
      price: "LKR800",
      imagePath: "lib/images/taro_milk_tea.png",
    ),
  ];

  //list of drinks in user cart
  final List<Drink> _userCart = [];

  //get drinks for sale
  List<Drink> get shop => _shop;

  //get user cart
  List<Drink> get cart => _userCart;

  //add drink to cart
  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  //remove drink from cart
  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}
