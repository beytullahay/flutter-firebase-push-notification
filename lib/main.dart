import 'package:firebase_push_notification_example/api/firebase_api.dart';
import 'package:firebase_push_notification_example/pages/homepage.dart';
import 'package:firebase_push_notification_example/pages/notificationpage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        useMaterial3: true,
      ),
      navigatorKey: navigatorKey,
      routes: {
        NotificationPage.route: (context) => const NotificationPage(),
      },
      home: const HomePage(),
    );
  }
}
