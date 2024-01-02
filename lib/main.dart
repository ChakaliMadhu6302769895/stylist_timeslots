import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:testing2/welcome_screen.dart';

CollectionReference servicesCollection = FirebaseFirestore.instance.collection('services');

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyC73yH176_UGNTzXgJKRiVHDTvE_GEWAtM',
          authDomain: "saloonprojet-4b216.firebaseapp.com",
          projectId: 'saloonprojet-4b216',
          storageBucket: "saloonprojet-4b216.appspot.com",
          messagingSenderId: '757222958410',
          appId: "1:757222958410:web:62390eae4de62a28744db3",
          measurementId: "G-RZ5JKRM2HW"),
    );
    NotificationSettings settings =
    await FirebaseMessaging.instance.requestPermission();

    runApp(MyApp2());
  } catch (e) {
    print('error initializing Firebase: $e');
  }
}

class MyApp2 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: TextTheme()),
      themeMode: ThemeMode.system,
      home: WelcomeScreen(),
    );
  }
}