import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/auth/sign_up_page.dart';
import 'package:food_delivery_app/ui/utils/assets_path/images_path.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:food_delivery_app/ui/utils/dimensions.dart';
import 'package:food_delivery_app/ui/utils/helper_widgets.dart';
import 'package:food_delivery_app/ui/widgets/elevated_button.dart';
import 'package:food_delivery_app/ui/widgets/large_text.dart';
import 'package:food_delivery_app/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class OnBoadingScreen3 extends StatelessWidget {
  const OnBoadingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor0d0d,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpace(Dimensions.screenHeight / 8.96),
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              ImagePath.onFood1,
              width: Dimensions.screenWidth / 1.14,
              height: Dimensions.screenHeight / 2.54,
            ),
          ),
          verticalSpace(Dimensions.screenHeight / 18.72),
          BigText(
            largeText: 'Find FoodGrid is Where Your ',
            fontSize: Dimensions.height22,
          ),
          BigText(
            largeText: 'Comfor Food Lives',
            fontSize: Dimensions.height22,
          ),
          verticalSpace(Dimensions.height40),
          SmallText(
            smallText: "Enjoy a fast and smoth food delivery at",
            fontSize: Dimensions.font12,
            textColor: AppColor.whiteColorFFF,
          ),
          SmallText(
            smallText: "your doorshetp",
            fontSize: Dimensions.font12,
            textColor: AppColor.whiteColorFFF,
          ),
          verticalSpace(Dimensions.height33),
          ElevatedButtonWidget(
            text: "Next",
            textColour: AppColor.textBlack000,
            onTab: () {
              Get.to(
                () => const SignUpScreen(),
              );
            },
          ),
        ],
      ),
    );
  }
}
