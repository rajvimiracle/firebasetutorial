import 'package:firebasetutorial/notifactions/notification_services.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 /* NotificationServices notificationServices = NotificationServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationServices.requestNotificationPermission();

    notificationServices.getDeviceToken().then((value) {
      print('deivce token');
      print(value);

    });
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
