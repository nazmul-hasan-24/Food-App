import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/detail_product_screen.dart';
import 'package:food_delivery_app/ui/utils/assets_path/images_path.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:food_delivery_app/ui/utils/dimensions.dart';
import 'package:food_delivery_app/ui/utils/helper_widgets.dart';
import 'package:food_delivery_app/ui/widgets/elevated_button.dart';
import 'package:food_delivery_app/ui/widgets/helper_text.dart';
import 'package:get/get.dart';
class CarouseSliderWidget extends StatelessWidget {
  const CarouseSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          ImagePath.food20,
          ImagePath.food2,
          ImagePath.food3,
          ImagePath.food4
        ].map((image) {
          return Builder(builder: (BuildContext context) {
            return Container(
              padding: EdgeInsets.only(right: Dimensions.height10),
              height: Dimensions.height180,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(Dimensions.height15)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: Dimensions.height10*2.3, left: Dimensions.height10,top: Dimensions.height10,bottom: Dimensions.height10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        fit: BoxFit.cover,
                          width: 180,
                          height: double.maxFinite,
                          image),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // verticalSpace(Dimensions.height25),
                        const HelperText(
                          bigText: 'Special Deal For March',
                          fontSize: 0,
                        ),
                        verticalSpace(Dimensions.height25),
                        ElevatedButtonWidget(
                          buttonBackGrounColor: AppColor.whiteColorFFF,
                          onTab: () {
                            Get.to(()=> const DetailProductScreen(),);
                          },
                          width: 140,
                          textColour: AppColor.primaryColor,
                          text: "Buy Now",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          });
        }).toList(),
        options: CarouselOptions(
          // height: Dimensions.height180,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: false,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ));
  }
}
