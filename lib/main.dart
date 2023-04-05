import 'package:flutter/material.dart';
import 'package:private/apis/game1.dart';
import 'package:private/screens/enrollment_screen.dart';
import 'package:private/screens/details_screen.dart';
import 'package:private/screens/like_screen.dart';
import 'package:private/screens/login_screen.dart';
import 'package:private/screens/password_screen.dart';
import 'package:private/screens/view_screen.dart';
import 'package:private/screens/home_screen.dart';
import 'package:private/screens/search_screen.dart';
import 'package:private/screens/whishlist_screen.dart';
import 'package:private/screens/whishlistempty_screen.dart';
import 'package:private/screens/likeempty_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}