import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/review_screens/rate_restaurant_screen.dart';
import 'package:food_delivery_app/ui/utils/assets_path/images_path.dart';
import 'package:food_delivery_app/ui/widgets/review_widget.dart';
import 'package:get/get.dart';

class RateFoodScreen extends StatelessWidget {
  const RateFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ReviewWidget(
          photoString: ImagePath.food3,
          submitOnPressed: () {},
          skipOnPressed: () => Get.to(
            () => const RateRestaurantScreen(),
          ),
        ),
      ),
    );
  }
}
