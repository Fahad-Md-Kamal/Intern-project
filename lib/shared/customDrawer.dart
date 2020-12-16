import 'package:flutter/material.dart';
import 'package:profile/views/pageFive.dart';
import 'package:profile/views/pageFour.dart';
import 'package:profile/views/pageOne.dart';
import 'package:profile/views/pageSix.dart';
import 'package:profile/views/pageThree.dart';
import 'package:profile/views/pageTwo.dart';
import 'package:profile/views/profilePage.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10.0,
      child: ListView(
        children: [
          GestureDetector(
            child: Container(
              padding: EdgeInsets.only(
                bottom: 1.0,
              ),
              margin: EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.5),
                    spreadRadius: 1.0,
                    blurRadius: 10.0,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 72.0,
                      backgroundColor: Colors.red.withOpacity(.4),
                      child: CircleAvatar(
                        radius: 70.0,
                        backgroundImage: AssetImage(
                          'images/profile.png',
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'User Name Goes Heare',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade900,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, ProfileView.routeName);
            },
          ),
          Divider(
            thickness: 5.0,
            color: Colors.red.withOpacity(.3),
            // height: 30.0,
          ),
          SizedBox(height: 10.0),
          NavButton(
            buttonText: 'Home',
            onPressed: () {
              print('Home');
            },
          ),
          NavButton(
            buttonText: 'Page One',
            onPressed: () {
              Navigator.pushNamed(context, PageOneView.routeName);
            },
          ),
          NavButton(
            buttonText: 'Page Two',
            onPressed: () {
              Navigator.pushNamed(context, PageTwoView.routeName);
            },
          ),
          NavButton(
            buttonText: 'Page Three',
            onPressed: () {
              Navigator.pushNamed(context, PageThreeView.routeName);
            },
          ),
          NavButton(
            buttonText: 'Page Four',
            onPressed: () {
              Navigator.pushNamed(context, PageFourView.routeName);
            },
          ),
          NavButton(
            buttonText: 'Page Five',
            onPressed: () {
              Navigator.pushNamed(context, PageFiveView.routeName);
            },
          ),
          NavButton(
            buttonText: 'Page Six',
            onPressed: () {
              Navigator.pushNamed(context, PageSixView.routeName);
            },
          ),
        ],
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  const NavButton({
    Key key,
    this.buttonText,
    this.onPressed,
  }) : super(key: key);

  final String buttonText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 15.0,
          left: 20.0,
          right: 20.0,
        ),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(.1),
              blurRadius: 30.0,
              spreadRadius: -2,
              offset: Offset(0, 20),
            ),
          ],
          border: Border(
            bottom: BorderSide(
              color: Colors.blueAccent.withOpacity(.3),
              width: 2.0,
            ),
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
