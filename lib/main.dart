import 'package:flutter/material.dart';
import 'package:profile/spleshScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ProfileSplash(),
    );
  }
}
