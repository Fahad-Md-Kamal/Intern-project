import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:profile/profilePage.dart';
import 'package:profile/signInForm.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileSplash extends StatefulWidget {
  @override
  _ProfileSplashState createState() => _ProfileSplashState();
}

class _ProfileSplashState extends State<ProfileSplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      _saveUsersInfo();
    });
  }

  _saveUsersInfo() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String name = sharedPreferences.getString('name');
    String contact = sharedPreferences.getString('contact');
    String dob = sharedPreferences.getString('dob');

    if (name != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileView(
            name: name,
            contact: contact,
            dob: dob,
          ),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileForm(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Welcome \nTo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.w900,
                color: Colors.orange.shade500,
              ),
            ),
          ),
          Image.asset('images/logo.png'),
          SizedBox(height: 20.0),
          SpinKitPulse(
            color: Colors.orange.shade400,
            size: 100.0,
          ),
        ],
      ),
    );
  }
}
