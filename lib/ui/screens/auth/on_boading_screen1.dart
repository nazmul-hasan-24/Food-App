
import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/screens/auth/onboading_screen2.dart';
import 'package:food_delivery_app/ui/utils/assets_path/images_path.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:get/get.dart';

class OnBoadingScreen1 extends StatefulWidget {
  const OnBoadingScreen1({super.key});

  @override
  State<OnBoadingScreen1> createState() => _OnBoading_Screen1State();
}

// ignore: camel_case_types
class _OnBoading_Screen1State extends State<OnBoadingScreen1> {

  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: Image.asset(ImagePath.splash),
      ),
    );
  }
}

Future<void> goToNextScreen() async {
// final googleSignIn = GoogleSignIn();
// final isSignedIn = await googleSignIn.isSignedIn();
// User? user;
// user = FirebaseAuth.instance.currentUser;

 

   Future.delayed(const Duration(seconds: 3))
      .then((value) => Get.offAll(() => const OnBoadingScreen2()));

}

