import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/auth/ready_profile_screen.dart';
import 'package:food_delivery_app/ui/screens/find_location_screen.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:food_delivery_app/ui/utils/dimensions.dart';
import 'package:food_delivery_app/ui/utils/helper_widgets.dart';
import 'package:food_delivery_app/ui/widgets/back_button_widget.dart';
import 'package:food_delivery_app/ui/widgets/body_background.dart';
import 'package:food_delivery_app/ui/widgets/elevated_button.dart';
import 'package:food_delivery_app/ui/widgets/large_text.dart';
import 'package:food_delivery_app/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class SetLocationScreen extends StatelessWidget {
  const SetLocationScreen({super.key});

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
                    largeText: "Set Your Location",
                    fontSize: Dimensions.width25,
                  ),
                  verticalSpace(Dimensions.height16),
                  SmallText(
                      fontSize: Dimensions.font12,
                      smallText:
                          "This data will be displayed in your account\n profile for security"),
                  verticalSpace(Dimensions.height70),
                  Container(
                    height: Dimensions.height187,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.height20,
                      horizontal: Dimensions.width15,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.backgroundColor2525,
                      borderRadius: BorderRadius.circular(Dimensions.font12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          alignment: WrapAlignment.start,
                          spacing: Dimensions.iconWidth24,
                          children: [
                            const CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xFFFFE14D),
                              child: Icon(
                                Icons.location_on,
                                color: Color(0xFFE86D28),
                                fill: 0.8,
                              ),
                            ),
                            BigText(
                              largeText: "Your Locations",
                              fontSize: Dimensions.height16,
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(()=> const FindLocationScreen());
                          },
                          style: ButtonStyle(
                            padding: MaterialStatePropertyAll(
                              EdgeInsets.all(Dimensions.font12),
                            ),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            minimumSize: MaterialStatePropertyAll(
                              Size(
                                double.infinity,
                                Dimensions.buttonHeight51,
                              ),
                            ),
                            backgroundColor: const MaterialStatePropertyAll(
                              Color(0xFF404040),
                            ),
                          ),
                          child: BigText(
                            largeText: "Set Location",
                            fontSize: Dimensions.height16,
                          ),
                        )
                      ],
                    ),
                  ),
                  verticalSpace(30),
                  Center(
                    child: ElevatedButtonWidget(
                      textColour: AppColor.textBlack000,
                      text: "Next",
                      buttonBackGrounColor: AppColor.primaryColor,
                      onTab: () {
                        Get.to(
                          () => const ReadyProfileScreen(),
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
