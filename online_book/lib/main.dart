// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, avoid_returning_null_for_void, unused_import

import 'package:flutter/material.dart';
import 'package:shoping/HomeScreen/HomeScreen.dart';
import 'package:shoping/SignIn/signScreen.dart';
import 'package:shoping/const.dart';
import 'SignUp/SignUpScreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        fontFamily: "Gordita",
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
              color: Colors.black87, fontSize: 16, fontWeight: FontWeight.w500),
          bodyText1: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ),
      home: SignInScreen(),
    );
  }
}
