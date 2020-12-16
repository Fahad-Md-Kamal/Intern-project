import 'package:flutter/material.dart';
import 'package:profile/shared/customDrawer.dart';

class PageSixView extends StatefulWidget {
  static String routeName = 'PageSixView';
  @override
  _PageSixViewState createState() => _PageSixViewState();
}

class _PageSixViewState extends State<PageSixView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          'Page Six',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
      appBar: AppBar(),
      drawer: CustomDrawer(),
    );
  }
}
