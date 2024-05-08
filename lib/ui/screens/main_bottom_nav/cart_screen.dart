
import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/controllers/main_nav_controller.dart';
import 'package:food_delivery_app/ui/screens/payment_screen.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:food_delivery_app/ui/utils/dimensions.dart';
import 'package:food_delivery_app/ui/utils/helper_widgets.dart';
import 'package:food_delivery_app/ui/widgets/back_button_widget.dart';
import 'package:food_delivery_app/ui/widgets/body_background.dart';
import 'package:food_delivery_app/ui/widgets/cart_details_widget.dart';
import 'package:food_delivery_app/ui/widgets/large_text.dart';
import 'package:food_delivery_app/ui/widgets/place_order_widget.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartDetailsWidget> orderList = List.generate(
      10,
      (index) =>
          CartDetailsWidget()); // Assuming FoodOrderCardWidget has a constructor
  //NOTE don't put const here

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: BodyBackground(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(
                  onTab: () {
                   Get.find<MainBottomNavController>().backToHome();
                  },
                ),
                verticalSpace(Dimensions.height20),
                BigText(
                  largeText: "Order Details",
                  fontSize: Dimensions.height25,
                ),
                verticalSpace(17),
                Expanded(
                  child: ListView.builder(
                    itemCount: orderList.length, // Use orderList.length
                    itemBuilder: (context, int index) {
                      return Dismissible(
                        key: ValueKey<CartDetailsWidget>(
                            orderList[index]),
                        background: Container(
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Icon(
                            Icons.delete,
                            color: AppColor.whiteColorFFF,
                          ),
                        ),
                        onDismissed: (direction) {
                          setState(() {
                            orderList.removeAt(index); // Remove from orderList
                          },);
                        },
                        child: orderList[index],
                      );
                    },
                  ),
                ),
                PlaceOdredWidget(
                  onTab: () => Get.to(() => const PaymentsScreen()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
