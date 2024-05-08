import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/utils/assets_path/images_path.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:food_delivery_app/ui/utils/helper_widgets.dart';
import 'package:food_delivery_app/ui/widgets/large_text.dart';
import 'package:food_delivery_app/ui/widgets/small_text.dart';

class CartDetailsWidget extends StatefulWidget {
  const CartDetailsWidget({super.key});

  @override
  State<CartDetailsWidget> createState() =>
      _CartDetailsWidgetState();
}

class _CartDetailsWidgetState extends State<CartDetailsWidget> {
  int item = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(4).copyWith(right: 10),
      margin: const EdgeInsets.only(bottom: 18),
      constraints:
          const BoxConstraints(minHeight: 130, minWidth: double.infinity),
      decoration: BoxDecoration(
        border: Border.all(width: 0, color: Colors.transparent),
        borderRadius: BorderRadius.circular(12),
        color: AppColor.lightBlack,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                fit: BoxFit.cover,
                ImagePath.food9,
                height: 100,
                width: 100,
              ),
            ),
          ),
          horizontal(6),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Spicy fresh crab",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                verticalSpace(2),
                const SmallText(smallText: "Hollywood Dine"),
                verticalSpace(2),
                const Text(
                  "\$50",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: AppColor.primaryColor),
                ),
              ],
            ),
          ),
          Wrap(
            spacing: 4,
            alignment: WrapAlignment.center,
            children: [
              Container(
                alignment: Alignment.topCenter,
                height: 25,
                  width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: item == 1 ? Colors.grey[800] : AppColor.primaryColor,
                ),
                child: GestureDetector(
                  onTap: () {
                    if (item > 1) {
                      item--;
                    }
                    setState(() {});
                  },
                  child: const Icon(
                    Icons.remove,
                    color: AppColor.whiteColorFFF,
                  ),
                ),
              ),
              BigText(
              largeText:   "$item",
              fontSize: 22,
                // style: const TextStyle(color: AppColor.whiteColorFFF, fontSize: 18 , fontW),
              ),
              GestureDetector(
                onTap: () {
                  if (item >= 1) {
                    item++;
                  }
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  height: 25,
                  width: 35,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 105, 90, 63),
                      Color.fromARGB(255, 201, 138, 31)
                    ]),
                    borderRadius: BorderRadius.circular(5),
                    // color: Colors.black12,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: AppColor.whiteColorFFF,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
