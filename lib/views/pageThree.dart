import 'package:flutter/material.dart';
import 'package:profile/shared/customDrawer.dart';

class PageThreeView extends StatefulWidget {
  static String routeName = 'PageThreeView';

  @override
  _PageThreeViewState createState() => _PageThreeViewState();
}

class _PageThreeViewState extends State<PageThreeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          'Page Three',
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
