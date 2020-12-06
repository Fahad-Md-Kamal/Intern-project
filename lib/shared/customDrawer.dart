import 'package:flutter/material.dart';
import 'package:profile/shared/button.dart';
import 'package:profile/views/infoBank.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10.0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            SizedBox(height: 20.0),
            Center(
              child: Text(
                'Logged in As',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            SizedBox(height: 20.0),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  buttonText: 'Login',
                  buttonColor: Colors.purple.shade700,
                  iconData: Icons.login,
                  textColor: Colors.white,
                  size: 20.0,
                  onPressed: () {},
                ),
                CustomIconButton(
                  buttonText: 'Sign Up',
                  buttonColor: Colors.orange.shade700,
                  iconData: Icons.login,
                  textColor: Colors.white,
                  size: 20.0,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20.0),
            CustomIconButton(
              buttonText: 'Info Bank',
              buttonColor: Colors.green.shade700,
              iconData: Icons.layers,
              textColor: Colors.white,
              size: 30.0,
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  InfoBankView.routeName,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
