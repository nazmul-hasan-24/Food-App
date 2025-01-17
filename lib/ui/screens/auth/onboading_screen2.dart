import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/auth/onboarding_screen3.dart';
import 'package:food_delivery_app/ui/utils/assets_path/images_path.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:food_delivery_app/ui/utils/dimensions.dart';
import 'package:food_delivery_app/ui/utils/helper_widgets.dart';
import 'package:food_delivery_app/ui/widgets/elevated_button.dart';
import 'package:food_delivery_app/ui/widgets/large_text.dart';
import 'package:food_delivery_app/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class OnBoadingScreen2 extends StatelessWidget {
  const OnBoadingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor0d0d,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpace(Dimensions.screenHeight / 8.96),
          Center(
            child: Image.asset(
              ImagePath.food4,
              width: Dimensions.screenWidth / 1.14,
              height: Dimensions.screenHeight / 2.54,
            ),
          ),
          verticalSpace(Dimensions.screenHeight / 11.72),
          BigText(
            largeText: 'Find Your Comfort',
            fontSize: Dimensions.height22,
          ),
          BigText(
            largeText: 'Food here ',
            fontSize: Dimensions.height22,
          ),
          verticalSpace(Dimensions.height40),
          SmallText(
            smallText: "Here You can find chef or dish for every",
            fontSize: Dimensions.font12,
            textColor: AppColor.whiteColorFFF,
          ),
          SmallText(
            smallText: "Teste and color. Enjoy!",
            fontSize: Dimensions.font12,
            textColor: AppColor.whiteColorFFF,
          ),
          verticalSpace(Dimensions.height33),
          ElevatedButtonWidget(
            text: "Next",
            textColour: AppColor.textBlack000,
            onTab: () {
              Get.to(() => const OnBoadingScreen3());
            },
          ),
        ],
      ),
    );
  }
}
