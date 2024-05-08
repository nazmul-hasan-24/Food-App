
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/app.dart';
import 'package:food_delivery_app/data/notification.dart';
import 'package:food_delivery_app/firebase_options.dart';
final navigatorKey = GlobalKey<NavigatorState>();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp( 
  options: DefaultFirebaseOptions.currentPlatform,
);
await FirebaseApi().initNotification();
  runApp(
    const FoodGrid(),
  );
}
