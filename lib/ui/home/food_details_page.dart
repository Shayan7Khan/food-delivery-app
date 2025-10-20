import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/model/food_model.dart';
import 'package:food_delivery_app/utils/theme.dart';
import 'package:food_delivery_app/widgets/custom_elevated_button.dart';

class FoodDetailsPage extends StatelessWidget {
  final FoodModel item;
  final VoidCallback onAddToCart;

  const FoodDetailsPage({
    super.key,
    required this.item,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300.h,
              pinned: true,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(item.image, fit: BoxFit.cover),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      item.name,
                      style: AppTextStyles.heading.copyWith(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    10.verticalSpace,
                    Text(
                      'This is the description',
                      style: AppTextStyles.body.copyWith(fontSize: 16.sp),
                      textAlign: TextAlign.center,
                    ),
                    30.verticalSpace,
                     CustomElevatedButton(
                      backgroundcolor: Color(0xFFFA4A0C),
                      foregroundColorcolor: Color(0xFFF6F6F9),
                      label: 'Add To Card - ${item.price}',
                      onTap: onAddToCart,
                      
                      ),
                     
                    20.verticalSpace,
                   
                      
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
