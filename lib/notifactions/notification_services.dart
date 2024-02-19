/*
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:app_settings/app_settings.dart';

class NotificationServices{

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  void requestNotificationPermission() async{
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    if(settings.authorizationStatus == AuthorizationStatus.authorized){
      print("User granted permission");

    }else if(settings.authorizationStatus == AuthorizationStatus.provisional){
      print("User granted provisional permission");

    }else{
      AppSettings.openNotificationSettings();
      print("User denied  permission");
    }

  }

  Future<String> getDeviceToken()async{
    String? token = await messaging.getToken();
    return token!;
  }
}*/
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class MyNotification {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  static requestPermission() async {
    NotificationSettings setting =
        await messaging.requestPermission(alert: true);
  }

  static listenMessage() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notifaction: ${message.notification}');

        FlutterLocalNotificationsPlugin localNotificationsPlugin =
            FlutterLocalNotificationsPlugin();

        InitializationSettings settings = InitializationSettings(
          android: AndroidInitializationSettings(
            "@mipmap/ic_launcher",
          ),
        );
        localNotificationsPlugin.initialize(settings);
        localNotificationsPlugin.show(
            message.notification!.hashCode,
            message.notification!.title,
            message.notification!.body,
            NotificationDetails(
                android:
                    AndroidNotificationDetails("channel_id", "channel_name")));
      }
    });
  }
}
