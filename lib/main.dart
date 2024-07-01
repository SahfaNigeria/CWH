import 'dart:io';

import 'package:community_health_workers/views/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
              apiKey: "AIzaSyA2WJFkv33A7eWnZYb_1_lxKKYCIXpmULE",
              appId: "1:501778526252:android:2c7ca2a5d0be71a24ea189",
              messagingSenderId: "501778526252",
              projectId: "jambo-mama-nigeria",
              storageBucket: "jambo-mama-nigeria.appspot.com"),
        )
      : Firebase.initializeApp();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CHWHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
