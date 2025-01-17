import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/main_bottom_nav/cart_screen.dart';
import 'package:food_delivery_app/ui/utils/assets_path/images_path.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:food_delivery_app/ui/utils/dimensions.dart';
import 'package:food_delivery_app/ui/utils/helper_widgets.dart';
import 'package:food_delivery_app/ui/widgets/back_button_widget.dart';
import 'package:food_delivery_app/ui/widgets/body_background.dart';
import 'package:food_delivery_app/ui/widgets/elevated_button.dart';
import 'package:food_delivery_app/ui/widgets/large_text.dart';
import 'package:get/get.dart';

class VoucherPromoScreen extends StatelessWidget {
  const VoucherPromoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;
    final double height = size.height;
    // int index = 0;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor0d0d,
      body: BodyBackground(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(
                  onTab: () {
                    Get.back();
                  },
                ),
                verticalSpace(30),
                const BigText(
                  largeText: "Voucher Promo",
                  fontSize: 25,
                ),
                verticalSpace(20),
                Expanded(
                  child: ListView.separated(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        height: height / 4.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: index.isEven
                              ? LinearGradient(
                                  colors: [
                                    const Color(0xFF22EA8A),
                                    const Color(0xFF02AC5B).withOpacity(0.8),
                                  ],
                                )
                              : const LinearGradient(
                                  colors: [
                                    Color(0xFFE9F7BA),
                                    Color(0xFFE9F7BA),
                                  ],
                                ),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              ImagePath.promo1,
                              height: width / 2.25,
                              width: width / 2.409,
                              fit: BoxFit.cover,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                verticalSpace(Dimensions.height30),
                                SizedBox(
                                  height: Dimensions.height60,
                                  width: Dimensions.width167,
                                  child: BigText(
                                    fontSize: width / 19.2,
                                    fontWeight: FontWeight.w700,
                                    largeText: "Special Deal For Octorber",
                                    color: index.isEven
                                        ? AppColor.whiteColorFFF
                                        : const Color(0xFF6B3A5B),
                                  ),
                                ),
                                verticalSpace(Dimensions.height13),
                                Container(
                                  alignment: Alignment.center,
                                  width: width / 3.7,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: AppColor.whiteColorFFF,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(0, -6),
                                        spreadRadius: -8,
                                        blurRadius: 20,
                                        color: const Color(0xFF000000)
                                            .withOpacity(0.2),
                                      ),
                                    ],
                                  ),
                                  child: BigText(
                                    largeText: "Buy now",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: index.isEven
                                        ? const Color(0xFf008344)
                                        : const Color(0xFF6B3A5B),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (_, __) {
                      return verticalSpace(10);
                    },
                  ),
                ),
                ElevatedButtonWidget(
                  height: Dimensions.height60,
                  text: ("Check Out"),
                  textColour: AppColor.textBlack000,
                  onTab: () => Get.to(
                    () => const CartScreen(),
                  ),
                  width: double.infinity,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
