import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/repository/cart_repository.dart';
import 'package:food_delivery_app/repository/food_repository.dart';
import 'package:food_delivery_app/ui/cart/cart_page.dart';
import 'package:food_delivery_app/ui/home/custom_food_card.dart';
import 'package:food_delivery_app/ui/home/custom_search_bar.dart';
import 'package:food_delivery_app/ui/home/food_details_page.dart';
import 'package:food_delivery_app/utils/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4, // 4 tabs
        child: Scaffold(
          backgroundColor: Color(0xFFF2F2F2),
          appBar: AppBar(
            backgroundColor: Color(0xFFF2F2F2),
            elevation: 0,
            automaticallyImplyLeading: false,
            toolbarHeight: 80.h,
            leadingWidth: 90.w,
            leading: Builder(
              builder: (context) => GestureDetector(
                onTap: () => Scaffold.of(context).openDrawer(),
                child: Container(
                  margin: EdgeInsets.only(left: 40.w, top: 10.h),
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/images/drawer_image.png',
                    width: 22.w,
                    height: 23.h,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 40.w, top: 10.h),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CartPage()),
                    );
                  },
                  icon: Image.asset(
                    'assets/images/shopping-cart.png',
                    height: 22.h,
                    width: 20.w,
                  ),
                ),
              ),
            ],
          ),
          drawer: const Drawer(child: Center(child: Text('Custom Drawer'))),
          body: Padding(
            padding: EdgeInsets.only(left: 39.w, top: 15.h, right: 39.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delicious\nfood for you",
                  style: AppTextStyles.heading.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 34.sp,
                    height: 1.h,
                  ),
                ),
                20.verticalSpace,
                CustomSearchBar(text: 'Search', icon: Icons.search),
                15.verticalSpace,
                TabBar(
                  indicatorColor: Color(0xFFFA4A0C),
                  labelColor: Color(0xFFFA4A0C),
                  dividerColor: Color(0xFFF2F2F2),
                  tabs: [
                    Tab(text: 'All'),
                    Tab(text: 'Food'),
                    Tab(text: 'Drinks'),
                    Tab(text: 'Snacks'),
                  ],
                ),
                10.verticalSpace,
                Expanded(
                  child: TabBarView(
                    children: [
                      // All tab
                      ListView.separated(
                        itemCount: FoodRepository.getAllItems().length,
                        itemBuilder: (context, index) {
                          final item = FoodRepository.getAllItems()[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FoodDetailsPage(
                                    item: item,
                                    onAddToCart: () {
                                      CartRepository.addItem(
                                        item,
                                      ); // add to cart
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
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
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 16.h),
                      ),
                      // Food tab
                      ListView.separated(
                        itemCount: FoodRepository.foodItems['Food']!.length,
                        itemBuilder: (context, index) {
                          final item = FoodRepository.foodItems['Food']![index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FoodDetailsPage(
                                    item: item,
                                    onAddToCart: () {
                                      CartRepository.addItem(
                                        item,
                                      ); // add to cart
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
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
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 16.h),
                      ),
                      // Drinks tab
                      ListView.separated(
                        itemCount: FoodRepository.foodItems['Drinks']!.length,
                        itemBuilder: (context, index) {
                          final item =
                              FoodRepository.foodItems['Drinks']![index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FoodDetailsPage(
                                    item: item,
                                    onAddToCart: () {
                                      CartRepository.addItem(
                                        item,
                                      ); // add to cart
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
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
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 16.h),
                      ),
                      // Snacks tab
                      ListView.separated(
                        itemCount: FoodRepository.foodItems['Snacks']!.length,
                        itemBuilder: (context, index) {
                          final item =
                              FoodRepository.foodItems['Snacks']![index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FoodDetailsPage(
                                    item: item,
                                    onAddToCart: () {
                                      CartRepository.addItem(
                                        item,
                                      ); // add to cart
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
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
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 16.h),
                      ),
                    ],
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
