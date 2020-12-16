import 'package:flutter/material.dart';
import 'package:profile/shared/customDrawer.dart';

class HomePageView extends StatefulWidget {
  static String routeName = 'HomePageView';

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          'Home Page',
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
