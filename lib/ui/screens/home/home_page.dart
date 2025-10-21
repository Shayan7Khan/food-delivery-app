import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/model/food_model.dart';
import 'package:food_delivery_app/core/repository/cart_repository.dart';
import 'package:food_delivery_app/core/repository/food_repository.dart';
import 'package:food_delivery_app/ui/screens/cart/cart_page.dart';
import 'package:food_delivery_app/ui/screens/drawer/drawer_page.dart';
import 'package:food_delivery_app/ui/screens/home/custom_food_card.dart';
import 'package:food_delivery_app/ui/screens/home/custom_search_bar.dart';
import 'package:food_delivery_app/ui/screens/home/food_details_page.dart';
import 'package:food_delivery_app/core/utils/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<FoodModel> items = FoodRepository.getAllItems();
  List<FoodModel>? foodList = FoodRepository.foodItems['Food'];
  List<FoodModel>? drinkList = FoodRepository.foodItems['Drinks'];
  List<FoodModel>? snacksList = FoodRepository.foodItems['Snacks'];

  List<FoodModel> foundList = [];

  void _runFilter(String enteredKeyword) {
    List<FoodModel> result = [];

    if (enteredKeyword.isEmpty) {
      result = items;
    } else {
      result = items
          .where(
            (item) =>
                item.name.toLowerCase().contains(enteredKeyword.toLowerCase()),
          )
          .toList();
    }
    setState(() {
      foundList = result;
    });
  }

  @override
  void initState() {
    foundList = items;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Color(0xFFF2F2F2),
          drawer: DrawerPage(),
          body: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: Color(0xFFF2F2F2),
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  floating: true,
                  pinned: true,
                  snap: false,
                  stretch: false,
                  expandedHeight: 80.h,
                  flexibleSpace: Container(
                    color: Color(0xFFF2F2F2),
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Row(
                        children: [
                          // Drawer icon
                          40.horizontalSpace,
                          Builder(
                            builder: (context) => GestureDetector(
                              onTap: () => Scaffold.of(context).openDrawer(),
                              child: Image.asset(
                                'assets/images/drawer_image.png',
                                width: 22.w,
                                height: 23.h,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Spacer(),
                          // Cart icon
                          Padding(
                            padding: EdgeInsets.only(right: 40.w),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CartPage(),
                                  ),
                                );
                              },
                              icon: Image.asset(
                                'assets/images/shopping-cart.png',
                                height: 22.h,
                                width: 23.w,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 35.w,
                      right: 35.w,
                      top: 10.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delicious\nfood for you",
                          style: AppTextStyles.heading.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 34.sp,
                            height: 1.5.h,
                          ),
                        ),
                        20.verticalSpace,
                        CustomSearchBar(
                          text: 'Search',
                          icon: Icons.search,
                          onChanged: (value) {
                            _runFilter(value);
                          },
                        ),
                        15.verticalSpace,
                        TabBar(
                          indicatorColor: Color(0xFFFA4A0C),
                          labelColor: Color(0xFFFA4A0C),
                          unselectedLabelColor: Colors.grey,
                          dividerColor: Color(0xFFF2F2F2),
                          tabs: [
                            Tab(text: 'All'),
                            Tab(text: 'Food'),
                            Tab(text: 'Drinks'),
                            Tab(text: 'Snacks'),
                          ],
                        ),
                        15.verticalSpace,
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                // All tab
                Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 39.w),
                  child: ListView.separated(
                    itemCount: foundList.length,
                    itemBuilder: (context, index) {
                      final item = foundList[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FoodDetailsPage(
                                item: item,
                                onAddToCart: () {
                                  CartRepository.addItem(item);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        "${item.name} added to cart!",
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                        child: CustomFoodCard(
                          title: item.name,
                          imagePath: item.image,
                          price: item.price,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => 16.verticalSpace,
                  ),
                ),
                // Food tab
                Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 39.w),
                  child: ListView.separated(
                    itemCount: foodList!.length,
                    itemBuilder: (context, index) {
                      final item = foodList![index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FoodDetailsPage(
                                item: item,
                                onAddToCart: () {
                                  CartRepository.addItem(item);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        "${item.name} added to cart!",
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                        child: CustomFoodCard(
                          title: item.name,
                          imagePath: item.image,
                          price: item.price,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => 16.verticalSpace,
                  ),
                ),
                // Drinks tab
                Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 39.w),
                  child: ListView.separated(
                    itemCount: drinkList!.length,
                    itemBuilder: (context, index) {
                      final item = drinkList![index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FoodDetailsPage(
                                item: item,
                                onAddToCart: () {
                                  CartRepository.addItem(item);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        "${item.name} added to cart!",
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                        child: CustomFoodCard(
                          title: item.name,
                          imagePath: item.image,
                          price: item.price,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => 16.verticalSpace,
                  ),
                ),
                // Snacks tab
                Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 39.w),
                  child: ListView.separated(
                    itemCount: snacksList!.length,
                    itemBuilder: (context, index) {
                      final item = snacksList![index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FoodDetailsPage(
                                item: item,
                                onAddToCart: () {
                                  CartRepository.addItem(item);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        "${item.name} added to cart!",
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                        child: CustomFoodCard(
                          title: item.name,
                          imagePath: item.image,
                          price: item.price,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => 16.verticalSpace,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
