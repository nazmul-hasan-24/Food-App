import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:food_delivery_app/main.dart';

class FirebaseApi{
  // init notification
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async{
    await firebaseMessaging.requestPermission();

    final fcmToken = await firebaseMessaging.getToken();
    print("Message token $fcmToken");
  }

void handleMessage(RemoteMessage? message){
  if(message == null)return;
  navigatorKey.currentState?.pushNamed(
    '/signin_screen',
    arguments: message
  );
}

Future initPushNotification() async{
  FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
 

  FirebaseMessaging.onMessageOpenedApp.listen((event) {handleMessage;});
}

}