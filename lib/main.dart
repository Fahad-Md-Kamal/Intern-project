import 'package:flutter/material.dart';
import 'package:profile/views/home.dart';
import 'package:profile/views/infoBank.dart';
import 'package:profile/views/pageFive.dart';
import 'package:profile/views/pageFour.dart';
import 'package:profile/views/pageOne.dart';
import 'package:profile/views/pageSix.dart';
import 'package:profile/views/pageThree.dart';
import 'package:profile/views/pageTwo.dart';
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
        primaryColor: Colors.redAccent,
      ),
      initialRoute: ProfileSplash.routeName,
      routes: {
        ProfileSplash.routeName: (context) => ProfileSplash(),
        ProfileForm.routeName: (context) => ProfileForm(),
        ProfileView.routeName: (context) => ProfileView(),
        InfoBankView.routeName: (context) => InfoBankView(),
        HomePageView.routeName: (context) => HomePageView(),
        PageOneView.routeName: (context) => PageOneView(),
        PageTwoView.routeName: (context) => PageTwoView(),
        PageThreeView.routeName: (context) => PageThreeView(),
        PageFourView.routeName: (context) => PageFourView(),
        PageFiveView.routeName: (context) => PageFiveView(),
        PageSixView.routeName: (context) => PageSixView(),
      },
      home: ProfileSplash(),
    );
  }
}
