import 'package:flutter/material.dart';
import 'package:profile/signInForm.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

TextStyle xStyle = TextStyle(
  fontSize: 30.0,
  color: Colors.orange.shade800,
  fontWeight: FontWeight.w700,
);

class ProfileView extends StatefulWidget {
  final String name;
  final String contact;
  final String dob;

  ProfileView({this.name, this.contact, this.dob});

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'PROFILE',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 60.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Name: ",
                    style: xStyle,
                  ),
                  SizedBox(width: 10),
                  Text(
                    widget.name,
                    style: xStyle.copyWith(
                      color: Colors.green.shade600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Contact: ",
                    style: xStyle,
                  ),
                  SizedBox(width: 10),
                  Text(
                    widget.contact,
                    style: xStyle.copyWith(
                      color: Colors.green.shade600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "DoB: ",
                    style: xStyle,
                  ),
                  SizedBox(width: 10),
                  Text(
                    widget.dob.split(' ')[0],
                    style: xStyle.copyWith(
                      color: Colors.green.shade600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.0),
              RaisedButton(
                child: Text(
                  'Clear Data',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                color: Colors.red,
                onPressed: () async {
                  SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  sharedPreferences.clear().then((value) => () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileForm(),
                          ),
                        );
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
