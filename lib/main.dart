import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebasetutorial/authentication/Login.dart';
import 'package:firebasetutorial/authentication/LoginScreen.dart';
import 'package:firebasetutorial/authentication/Wrapper.dart';
import 'package:firebasetutorial/authentication/loginwithgoogle.dart';
import 'package:firebasetutorial/firebase_options.dart';
import 'package:firebasetutorial/notifactions/home_screen.dart';
import 'package:firebasetutorial/notifactions/notification_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
 @override
  void initState() {
    MyNotification.requestPermission();
    MyNotification.listenMessage();
    getToken();
    super.initState();
  }


 getToken() async{
   String? token = await MyNotification.messaging.getToken();
   print("token ${token}");

 }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  PhoneHome(),
    );
  }
}

