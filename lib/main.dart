import 'package:flutter/material.dart';
import 'package:profile/views/profilePage.dart';
import 'package:profile/views/signInForm.dart';
import 'package:profile/views/spleshScreen.dart';

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
      initialRoute: ProfileSplash.routeName,
      routes: {
        ProfileSplash.routeName: (context) => ProfileSplash(),
        ProfileForm.routeName: (context) => ProfileForm(),
        ProfileView.routeName: (context) => ProfileView(),
      },
      home: ProfileSplash(),
    );
  }
}
