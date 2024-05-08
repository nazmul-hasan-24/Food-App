import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/auth/set_location.dart';
import 'package:food_delivery_app/ui/utils/assets_path/images_path.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:food_delivery_app/ui/utils/dimensions.dart';
import 'package:food_delivery_app/ui/utils/helper_widgets.dart';
import 'package:food_delivery_app/ui/widgets/back_button_widget.dart';
import 'package:food_delivery_app/ui/widgets/body_background.dart';
import 'package:food_delivery_app/ui/widgets/elevated_button.dart';
import 'package:food_delivery_app/ui/widgets/large_text.dart';
import 'package:food_delivery_app/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class PhotoPreviewScreen extends StatelessWidget {
  const PhotoPreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: BodyBackground(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width25,
                  vertical: Dimensions.height44),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackButtonWidget(onTab: () {
                    Get.back();
                  }),
                  verticalSpace(Dimensions.height20),
                  BigText(
                      largeText: "Upload Your Photo",
                      fontSize: Dimensions.width25),
                  verticalSpace(Dimensions.height16),
                  SmallText(
                      fontSize: Dimensions.font12,
                      smallText:
                          "This data will be displayed in your account\n profile for security"),
                  verticalSpace(Dimensions.height40),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(Dimensions.font12),
                      child: Image.asset(
                        height: Dimensions.height242,
                        width: Dimensions.width236,
                        ImagePath.uploadPhoto,
                      ),
                    ),
                  ),
                  verticalSpace(Dimensions.height40),
                  Center(
                    child: ElevatedButtonWidget(
                      buttonBackGrounColor: AppColor.primaryColor,
                      text: "Next",
                      textColour: AppColor.textBlack000,
                      onTab: () {
                        Get.to(
                          () => const SetLocationScreen(),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
