import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/auth/bio_screen.dart';
import 'package:food_delivery_app/ui/screens/auth/sign_in_screen.dart';
import 'package:food_delivery_app/ui/utils/assets_path/images_path.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:food_delivery_app/ui/utils/dimensions.dart';
import 'package:food_delivery_app/ui/utils/helper_widgets.dart';
import 'package:food_delivery_app/ui/widgets/elevated_button.dart';
import 'package:food_delivery_app/ui/widgets/large_text.dart';
import 'package:food_delivery_app/ui/widgets/small_text.dart';
import 'package:food_delivery_app/ui/widgets/text_form_field.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChacked = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: Stack(
          children: [
            Image.asset(
              ImagePath.recBack,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width25,
                vertical: Dimensions.height60,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Dimensions.height20,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // verticalSpace(Dimensions.height80),
                    Container(
                      height: size.height * 0.12,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.height8),
                        color: AppColor.primaryColor,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            ImagePath.cup,
                            height: Dimensions.height60,
                            width: Dimensions.width61,
                          )
                        ],
                      ),
                    ),
                    verticalSpace(Dimensions.height10),
                    Text(
                      "FoodGrid",
                      style: TextStyle(
                        fontSize: Dimensions.height40,
                        color: AppColor.primaryColor,
                        fontFamily: 'IBM Plex Mono',
                      ),
                    ),
                    verticalSpace(Dimensions.height10),
                    SmallText(
                      smallText: "Deliver favorite food",
                      fontSize: Dimensions.height13,
                      fontWeight: FontWeight.w500,
                      textColor: AppColor.whiteColorFFF,
                    ),
                    verticalSpace(Dimensions.height25),
                    BigText(
                      largeText: "Sign Up For Free",
                      fontSize: Dimensions.height22,
                    ),
                    verticalSpace(Dimensions.height25),
                    Form(
                      child: Column(
                        children: [
                          const CustomTextFormField(
                            textInputType: TextInputType.text,
                            hintText: "User name",
                            prefixIcon: Icons.person,
                          ),
                          verticalSpace(Dimensions.font12),
                          const CustomTextFormField(
                            textInputType: TextInputType.emailAddress,
                            hintText: "Email",
                            prefixIcon: Icons.email,
                          ),
                          verticalSpace(Dimensions.font12),
                          const CustomTextFormField(
                            textInputType: TextInputType.text,
                            hintText: "Password",
                            prefixIcon: Icons.lock,
                            suffixIcon: Icons.remove_red_eye_rounded,
                          ),
                          verticalSpace(
                            Dimensions.height8,
                          ),
                          SizedBox(
                            height: Dimensions.height22,
                            // width: double.infinity,
                            child: ListTile(
                              horizontalTitleGap: 0,
                              contentPadding: EdgeInsets.zero,
                              // minVerticalPadding: 0.2,
                              minLeadingWidth: Dimensions.iconWidth20,
                              leading: Checkbox(
                                value: isChacked,
                                onChanged: (value) {
                                  setState(() {
                                    isChacked = value!;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.height10),
                                ),
                                activeColor: AppColor.primaryColor,
                                checkColor: AppColor.blackColor2,
                              ),
                              title: SmallText(
                                smallText: "Keep Me Signed In",
                                fontSize: Dimensions.font12,
                                textColor: const Color(0xFF8A8A8A),
                              ),
                            ),
                          ),
                          verticalSpace(Dimensions.font12),
                          SizedBox(
                            height: Dimensions.height22,
                            width: double.infinity,
                            child: ListTile(
                              horizontalTitleGap: 0,
                              // minVerticalPadding: 0.2,
                              contentPadding: EdgeInsets.zero,
                              leading: Checkbox(
                                value: isChacked,
                                onChanged: (value) {
                                  setState(() {
                                    isChacked = value!;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                activeColor: AppColor.primaryColor,
                                checkColor: AppColor.blackColor2,
                              ),
                              title: SmallText(
                                smallText: "Email me about special pricing",
                                fontSize: Dimensions.font12,
                                textColor: const Color(0xFF8A8A8A),
                              ),
                            ),
                          ),
                          verticalSpace(Dimensions.height40),
                          ElevatedButtonWidget(
                            text: "Create Account",
                            width: Dimensions.butonWidth171,
                            textColour: AppColor.textBlack000,
                            buttonBackGrounColor: AppColor.primaryColor,
                            onTab: () {
                              Get.to(
                                () => const BioScreen(),
                              );
                            },
                          ),
                          verticalSpace(
                            Dimensions.height16,
                          ),
                          InkWell(
                            onTap: () => Get.to(
                              () => const SignInScreen(),
                            ),
                            child: Text(
                              "already have an account?",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                decorationThickness: 2,
                                decorationStyle: TextDecorationStyle.solid,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColor.primaryColor,
                                color: AppColor.primaryColor,
                                fontSize: Dimensions.font12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
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
