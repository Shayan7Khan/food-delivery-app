import 'package:food_delivery_app/model/food_model.dart';

class FoodRepository {
  static final Map<String, List<FoodModel>> foodItems = {
    'Food': [
      FoodModel(
        name: 'Pizza',
        image: 'assets/images/food/food-1.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'Burger',
        image: 'assets/images/food/food-2.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'Biryani',
        image: 'assets/images/food/food-3.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'Mutton',
        image: 'assets/images/food/food-4.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'Kabab',
        image: 'assets/images/food/food-5.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'Alo Keema',
        image: 'assets/images/food/food-6.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'Gosht',
        image: 'assets/images/food/food-7.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'Pulao',
        image: 'assets/images/food/food-8.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'Steak',
        image: 'assets/images/food/food-9.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'Fries',
        image: 'assets/images/food/food-10.jpg',
        price: '1200 Pkr',
      ),
    ],
    'Drinks': [
      FoodModel(
        name: 'Coke',
        image: 'assets/images/drinks/drink-1.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'pepsi',
        image: 'assets/images/drinks/drink-2.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: '7Up',
        image: 'assets/images/drinks/drink-3.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'Marinda',
        image: 'assets/images/drinks/drink-4.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'Dew',
        image: 'assets/images/drinks/drink-5.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'Fanta',
        image: 'assets/images/drinks/drink-6.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'Sting',
        image: 'assets/images/drinks/drink-7.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'cola',
        image: 'assets/images/drinks/drink-8.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'Margarita',
        image: 'assets/images/drinks/drink-9.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'Lemonade',
        image: 'assets/images/drinks/drink-10.jpg',
        price: '1200 Pkr',
      ),
    ],
    'Snacks': [
      FoodModel(
        name: 'chips',
        image: 'assets/images/snacks/snack-1.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'pingos',
        image: 'assets/images/snacks/snack-1.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'lays',
        image: 'assets/images/snacks/snack-1.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'kurkure',
        image: 'assets/images/snacks/snack-1.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'hashmi dawakhana',
        image: 'assets/images/snacks/snack-1.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'cheese',
        image: 'assets/images/snacks/snack-1.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'chocolate',
        image: 'assets/images/snacks/snack-1.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'mango shake',
        image: 'assets/images/snacks/snack-1.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'banana pudding',
        image: 'assets/images/snacks/snack-1.jpg',
        price: '1200 Pkr',
      ),
      FoodModel(
        name: 'sliced mangoes',
        image: 'assets/images/snacks/snack-1.jpg',
        price: '1200 Pkr',
      ),
    ],
  };

  //Function to fetch all the data items
  static List<FoodModel> getAllItems() {
    List<FoodModel> allItems = [];
    foodItems.forEach((key, value) {
      allItems.addAll(value);
    });
    return allItems;
  }
}
