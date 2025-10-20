import 'package:food_delivery_app/model/food_model.dart';

class FoodRepository {
  static final Map<String, List<FoodModel>> foodItems = {
    'Food': [
      FoodModel(
        name: 'Pizza',
        image: 'assets/images/food/food-1.jpg',
        price: '1200',
      ),
      FoodModel(
        name: 'Burger',
        image: 'assets/images/food/food-2.jpg',
        price: '2000 ',
      ),
      FoodModel(
        name: 'Biryani',
        image: 'assets/images/food/food-3.jpg',
        price: '500 ',
      ),
      FoodModel(
        name: 'Mutton',
        image: 'assets/images/food/food-4.jpg',
        price: '1300 ',
      ),
      FoodModel(
        name: 'Kabab',
        image: 'assets/images/food/food-5.jpg',
        price: '11000 ',
      ),
      FoodModel(
        name: 'Alo Keema',
        image: 'assets/images/food/food-6.jpg',
        price: '2903 ',
      ),
      FoodModel(
        name: 'Gosht',
        image: 'assets/images/food/food-7.jpg',
        price: '3524 ',
      ),
      FoodModel(
        name: 'Pulao',
        image: 'assets/images/food/food-8.jpg',
        price: '3455 ',
      ),
      FoodModel(
        name: 'Steak',
        image: 'assets/images/food/food-9.jpg',
        price: '5435 ',
      ),
      FoodModel(
        name: 'Fries',
        image: 'assets/images/food/food-10.jpg',
        price: '4535 ',
      ),
    ],
    'Drinks': [
      FoodModel(
        name: 'Coke',
        image: 'assets/images/drinks/drink-1.jpg',
        price: '6575 ',
      ),
      FoodModel(
        name: 'pepsi',
        image: 'assets/images/drinks/drink-2.jpg',
        price: '7879 ',
      ),
      FoodModel(
        name: '7Up',
        image: 'assets/images/drinks/drink-3.jpg',
        price: '4676 ',
      ),
      FoodModel(
        name: 'Marinda',
        image: 'assets/images/drinks/drink-4.jpg',
        price: '9675 ',
      ),
      FoodModel(
        name: 'Dew',
        image: 'assets/images/drinks/drink-5.jpg',
        price: '2432 ',
      ),
      FoodModel(
        name: 'Fanta',
        image: 'assets/images/drinks/drink-6.jpg',
        price: '7657 ',
      ),
      FoodModel(
        name: 'Sting',
        image: 'assets/images/drinks/drink-7.jpg',
        price: '3453 ',
      ),
      FoodModel(
        name: 'cola',
        image: 'assets/images/drinks/drink-8.jpg',
        price: '7656 ',
      ),
      FoodModel(
        name: 'Margarita',
        image: 'assets/images/drinks/drink-9.jpg',
        price: '5675',
      ),
      FoodModel(
        name: 'Lemonade',
        image: 'assets/images/drinks/drink-10.jpg',
        price: '5674',
      ),
    ],
    'Snacks': [
      FoodModel(
        name: 'chips',
        image: 'assets/images/snacks/snack-1.jpg',
        price: '5742 ',
      ),
      FoodModel(
        name: 'pingos',
        image: 'assets/images/snacks/snack-2.jpg',
        price: '2457 ',
      ),
      FoodModel(
        name: 'lays',
        image: 'assets/images/snacks/snack-3.jpg',
        price: '2652 ',
      ),
      FoodModel(
        name: 'kurkure',
        image: 'assets/images/snacks/snack-4.jpg',
        price: '7542 ',
      ),
      FoodModel(
        name: 'hashmi dawakhana',
        image: 'assets/images/snacks/snack-5.jpg',
        price: '2564 ',
      ),
      FoodModel(
        name: 'cheese',
        image: 'assets/images/snacks/snack-6.jpg',
        price: '2456 ',
      ),
      FoodModel(
        name: 'chocolate',
        image: 'assets/images/snacks/snack-7.jpg',
        price: '2456 ',
      ),
      FoodModel(
        name: 'mango shake',
        image: 'assets/images/snacks/snack-8.jpg',
        price: '6524 ',
      ),
      FoodModel(
        name: 'banana pudding',
        image: 'assets/images/snacks/snack-9.jpg',
        price: '6256 ',
      ),
      FoodModel(
        name: 'sliced mangoes',
        image: 'assets/images/snacks/snack-10.jpg',
        price: '5654 ',
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
