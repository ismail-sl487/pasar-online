import 'package:flutter/material.dart';
import 'package:pwa_melijo/constant.dart';
import 'package:pwa_melijo/presenation/home/home.dart';
import 'package:pwa_melijo/presenation/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pasar Online Batu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      navigatorKey: navigatorKey,
    );
  }
}
