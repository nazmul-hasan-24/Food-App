import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/explore_restaurant_with_filter_screen.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:food_delivery_app/ui/utils/dimensions.dart';
import 'package:food_delivery_app/ui/utils/helper_widgets.dart';
import 'package:food_delivery_app/ui/widgets/app_bar.dart';
import 'package:food_delivery_app/ui/widgets/body_background.dart';
import 'package:food_delivery_app/ui/widgets/large_text.dart';
import 'package:food_delivery_app/ui/widgets/restaurant_card_widget.dart';
import 'package:get/get.dart';

class ExploreRestaurantScreen extends StatelessWidget {
  const ExploreRestaurantScreen({super.key, this.title = ''});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor0d0d,
      body: BodyBackground(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Dimensions.width24).copyWith(
            top: Dimensions.height44,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppBarWidget(
                onTap: () =>
                    Get.to(() => const ExploreRestaurantWithFilterScreen()),
              ),
              verticalSpace(16),
              BigText(
                largeText: "Restaurant",
                fontSize: Dimensions.height15,
              ),
              verticalSpace(14),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 40,
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 13,
                      crossAxisSpacing: 13,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return const FittedBox(
                      fit: BoxFit.fill,
                      child: RestaurantCardWidget(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
