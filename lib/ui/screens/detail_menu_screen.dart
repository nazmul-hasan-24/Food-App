import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/voucher_promo_screen.dart';
import 'package:food_delivery_app/ui/utils/assets_path/images_path.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:food_delivery_app/ui/utils/dimensions.dart';
import 'package:food_delivery_app/ui/utils/helper_widgets.dart';
import 'package:food_delivery_app/ui/widgets/elevated_button.dart';
import 'package:food_delivery_app/ui/widgets/home/section_title.dart';
import 'package:food_delivery_app/ui/widgets/large_text.dart';
import 'package:food_delivery_app/ui/widgets/product_details/list_tile_widget.dart';
import 'package:food_delivery_app/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class DetailMenuScreen extends StatelessWidget {
  const DetailMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;
    final double height = size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.height20),
          ),
          height: Dimensions.screenHeight,
          child: Stack(
            children: [
              Image.asset(
                width: double.infinity,
                height: height / 2.31,
                fit: BoxFit.fill,
                ImagePath.food10,
              ),
              SizedBox(
                // height: height / 1.038,
                child: DraggableScrollableSheet(
                  maxChildSize: 0.94,
                  initialChildSize: 0.64,
                  minChildSize: 0.64,
                  builder: (context, scroller) {
                    return Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.symmetric(horizontal: height / 35.84)
                          .copyWith(
                              top: height / 44.8, bottom: Dimensions.height44),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.height40),
                          topRight: Radius.circular(Dimensions.height40),
                        ),
                        color: AppColor.backgroundColor0d0d,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              controller: scroller,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Container(
                                      alignment: Alignment.topCenter,
                                      height: 3.55,
                                      width: Dimensions.width61,
                                      color: AppColor.backgroundColor2525,
                                    ),
                                  ),
                                  verticalSpace(height / 40.727),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        // padding: EdgeInsets.all(height / 67.6),
                                        height: height / 25.6,
                                        width: width / 3.2,
                                        constraints: BoxConstraints(
                                            minWidth: width / 6.77),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color.fromARGB(
                                              255, 29, 24, 16),
                                        ),
                                        child: SmallText(
                                          fontSize: height / 74.666,
                                          textColor: const Color(0xFFFFA300),
                                          smallText: "Regular",
                                        ),
                                      ),
                                      Wrap(
                                        spacing: 5,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.zero,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              color: const Color(0xFFFFBE49)
                                                  .withOpacity(0.1),
                                            ),
                                            height: height / 26.365,
                                            width: width / 12.17,
                                            child: Icon(
                                              Icons.location_on,
                                              size: height / 35.84,
                                              color: const Color(0xFFFFBE49),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.zero,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              color: const Color(0xFFFF1D1D)
                                                  .withOpacity(0.1),
                                            ),
                                            height: height / 26.365,
                                            width: width / 12.17,
                                            child: Icon(
                                              Icons.favorite,
                                              size: height / 35.84,
                                              color: const Color(0xFFFF1D1D),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  verticalSpace(15),
                                  BigText(
                                    largeText: "Vegtable Salad",
                                    fontSize: height / 29.8666,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  verticalSpace(20),
                                   SizedBox(
                                    width: 100,
                                    child:  Row(
                                      // spacing: 12,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(right: 10),
                                          height: 20,
                                          width: 16,
                                          child: const Icon(
                                            color: Color(0xFFFFA300),
                                            Icons.star_half,
                                          ),
                                        ),
                                        const SmallText(
                                          smallText: "4.8 Rating",
                                          letterSpacing: 0.5,
                                          textColor: Color(0xFF666666),
                                        ),
                                      ],
                                    ),
                                  ),
                                  verticalSpace(44.8),
                                  SmallText(
                                      fontSize: height / 74.666,
                                      smallText:
                                          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dui tristique sem rhoncus sed tincidunt ac. Accumsan turpis eleifend dui massa ornare sed et quam. Egestas nunc euismod laoreet dui penatibus. Tincidunt commodo ornare lacus enim dictumst. Vivamus amet eget non in diam pretium a. Phasellus lorem lacus, ullamcorper ut. Pulvinar vitae montes, velit nulla interdum etiam vitae quam. At."""),
                                  verticalSpace(height / 44.8),
                                  SectionTitle(
                                    title: "Popular Menu",
                                    onTap: () {},
                                  ),
                                  verticalSpace(20),
                                  listTileWidget("Yogurt"),
                                  listTileWidget("mayonnaise"),
                                  listTileWidget("Photato"),
                                  listTileWidget("Dodi"),
                                  verticalSpace(20),
                                  const BigText(
                                    largeText: "Testimonials",
                                    fontSize: 15,
                                  ),
                                  verticalSpace(height / 44.8),
                                  ListView.separated(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    primary: false,
                                    itemCount: 20,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        alignment: Alignment.center,
                                        height: height / 6.8396946564885,
                                        padding: EdgeInsets.symmetric(
                                            vertical: height / 49.666,
                                            horizontal: width / 29.571),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              height / 59.74),
                                          color: const Color.fromARGB(
                                              76, 37, 37, 37),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      height / 89.6),
                                              child: Image.asset(
                                                ImagePath.pk,
                                                fit: BoxFit.cover,
                                                width: width / 4.71,
                                                height: height / 10.8,
                                              ),
                                            ),
                                            horizontal(width / 20.71),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  BigText(
                                                    largeText: "William Noah",
                                                    fontSize: height / 59.7333,
                                                  ),
                                                  verticalSpace(
                                                      height / 298.666),
                                                  SmallText(
                                                    smallText: "10 April 2022",
                                                    fontSize: height / 110.77,
                                                    textColor:
                                                        const Color(0xFFA1A1A1),
                                                  ),
                                                  verticalSpace(height / 52.71),
                                                  Text(
                                                    "This is great, so delicious! you must here, with your family",
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                      inherit: false,
                                                      fontSize: height / 74.666,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      color: const Color(
                                                          0xFFDFDFDF),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              height: height / 28.91,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                color: AppColor.primaryColor
                                                    .withOpacity(0.1),
                                              ),
                                              child: Wrap(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    size: height / 42.666,
                                                    color:
                                                        AppColor.primaryColor,
                                                  ),
                                                  BigText(
                                                    largeText: "5",
                                                    fontSize: height / 59.733,
                                                    color:
                                                        AppColor.primaryColor,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    separatorBuilder: (_, __) {
                                      return verticalSpace(height / 44.8);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // const Spacer(),
                          ElevatedButtonWidget(
                            height: Dimensions.height60,
                            width: double.infinity,
                            text: ('Add to cart'),
                            textColour: AppColor.backgroundColor0d0d,
                            onTab: () {
                              Get.to(() => const VoucherPromoScreen());
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
