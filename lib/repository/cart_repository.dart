import 'package:food_delivery_app/model/food_model.dart';

class CartRepository {
  static final List<FoodModel> _cartItems = [];

  static void addItem(FoodModel item) {
    _cartItems.add(item);
  }

  static List<FoodModel> getItems() => _cartItems;

  static void removeItem(FoodModel item) {
    _cartItems.remove(item);
  }

  static void clear() => _cartItems.clear();
}
