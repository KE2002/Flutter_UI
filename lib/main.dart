import 'package:flutter/material.dart';
import 'package:login/constant.dart';
import 'package:login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",
        colorScheme: const ColorScheme.light().copyWith(
          primary: primaryColor,
        ),
      ),
      home: const Login(),
    );
  }
}
