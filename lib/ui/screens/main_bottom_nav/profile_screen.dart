
import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/controllers/main_nav_controller.dart';
import 'package:food_delivery_app/ui/screens/auth/bio_screen.dart';
import 'package:food_delivery_app/ui/screens/main_bottom_nav/cart_screen.dart';
import 'package:food_delivery_app/ui/screens/voucher_promo_screen.dart';
import 'package:food_delivery_app/ui/utils/assets_path/images_path.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:food_delivery_app/ui/utils/dimensions.dart';
import 'package:food_delivery_app/ui/utils/helper_widgets.dart';
import 'package:food_delivery_app/ui/widgets/large_text.dart';
import 'package:food_delivery_app/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
   const ProfileScreen({super.key,  });


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;
    final double height = size.height;

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) =>
          Get.find<MainBottomNavController>().backToHome(),
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: SafeArea(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                // color: Colors.red,
                height: Dimensions.height223+87.0,

                child: Image.asset(
                  repeat: ImageRepeat.repeatX,
                  scale: 200,
                    height: Dimensions.height223+87.0,
                    width: double.maxFinite,
                    fit: BoxFit.cover, ImagePath.myPhoto,),
              ),
              DraggableScrollableSheet(
                initialChildSize: 0.67,
                maxChildSize: 0.76,
                minChildSize: 0.67,
                builder: (context, scrollController) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: width / 13.76,
                      vertical: 15,
                    ),
                    decoration: const BoxDecoration(
                      color: AppColor.backgroundColor0d0d,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              alignment: Alignment.topCenter,
                              height: 3.55,
                              width: 60,
                              color: AppColor.backgroundColor2525,
                            ),
                          ),
                          verticalSpace(50),
                          Container(
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.all(height / 67.6),
                            height: height / 20.28,
                            width: width / 3.2,
                            constraints: BoxConstraints(minWidth: width / 6.77),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 29, 24, 16),
                            ),
                            child: const SmallText(
                              fontSize: 12,
                              textColor: Color(0xFFFFA300),
                              smallText: "Member Gold",
                            ),
                          ),
                          verticalSpace(20),
                          Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const BigText(
                                largeText: 'Nazmul Hasan',
                                fontSize: 30,
                              ),
                              IconButton(
                                  onPressed: () => Get.to(
                                        () => const BioScreen(),
                                      ),
                                  icon: Image.asset(
                                    ImagePath.editIcon,
                                    width: 18,
                                    height: 18,
                                  )),
                            ],
                          ),
                          verticalSpace(8),
                        const  SmallText(
                            smallText: 'nazmul.tex99@gmail.com',
                            fontSize: 12,
                          ),
                          verticalSpace(20),
                          Container(
                            height: height / 12.68,
                            decoration: BoxDecoration(
                              color: AppColor.backgroundColor2525,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ListTile(
                              onTap: () => Get.to(
                                () => const VoucherPromoScreen(),
                              ),
                              leading: Image.asset(ImagePath.voucher),
                              title: const BigText(
                                largeText: "You Have 3 Voucher",
                                fontSize: 15,
                              ),
                            ),
                          ),
                          verticalSpace(15),
                          const BigText(
                            largeText: "Favourite",
                            fontSize: 15,
                          ),
                          verticalSpace(15),
                          Container(
                            // alignment: Alignment.center,
                            height: height / 7.37,
                            padding: EdgeInsets.all(height / 90.75)
                                .copyWith(left: 10),
                            decoration: BoxDecoration(
                              color: AppColor.backgroundColor2525,
                              borderRadius:
                                  BorderRadius.circular(height / 73.75),
                            ),
                            // padding: EdgeInsets.all(29),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image.asset(
                                      ImagePath.food3,
                                      height: height / 10.01,
                                      width: width / 4.31,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    BigText(
                                      largeText: "Spicy fresh carb",
                                      fontSize: height / 58.08,
                                    ),
                                    verticalSpace(Dimensions.height10 / 1.1),
                                    SmallText(
                                      smallText: "Meat You There",
                                      fontSize: height / 67.06,
                                      textColor: const Color(0xFFA1A1A1),
                                    ),
                                    verticalSpace(Dimensions.height10 / 1.1),
                                    BigText(
                                      largeText: "\$50",
                                      fontSize: height / 50.56,
                                      color: AppColor.primaryColor,
                                    ),
                                  ],
                                ),
                                TextButton(
                                    onPressed: () {
                                      Get.to(
                                        () => const CartScreen(),
                                      );
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: AppColor.primaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      fixedSize:
                                          Size(width / 4.7, height / 26.16),
                                    ),
                                    child: const BigText(
                                      largeText: 'Buy Again',
                                      fontSize: 10,
                                      color: AppColor.textBlack000,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
