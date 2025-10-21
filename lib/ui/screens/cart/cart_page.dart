import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/core/utils/theme.dart';
import 'package:food_delivery_app/core/repository/cart_repository.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final cartItems = CartRepository.getItems();

    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        title: Text(
          "Orders",
          style: AppTextStyles.subheading.copyWith(fontSize: 20.sp),
        ),
        backgroundColor: Color(0xFFF2F2F2),
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: cartItems.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/shopping-cart.png'),
                  10.verticalSpace,
                  Text(
                    "No items added to cart",
                    style: AppTextStyles.heading.copyWith(fontSize: 20.sp),
                  ),
                ],
              ),
            )
          : ListView.separated(
              padding: EdgeInsets.all(20.w),
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ListTile(
                  leading: Image.asset(
                    item.image,
                    width: 50.w,
                    height: 50.h,
                    fit: BoxFit.cover,
                  ),
                  title: Text(item.name),
                  subtitle: Text("\$${item.price}"),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        CartRepository.removeItem(item);
                      });
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 16.h),
            ),
      bottomNavigationBar: cartItems.isEmpty
          ? null
          : Padding(
              padding: EdgeInsets.all(20.w),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFA4A0C),
                  foregroundColor: Color(0xFFF6F6F9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(50),
                  ),
                  fixedSize: Size(280.w, 50.h),
                ),

                onPressed: () {
                  setState(() {
                    CartRepository.clear();
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Checkout successful!")),
                  );
                  Navigator.pop(context);
                },
                child: Text("Checkout", style: TextStyle(fontSize: 18.sp)),
              ),
            ),
    );
  }
}
