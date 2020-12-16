import 'package:flutter/material.dart';
import 'package:profile/shared/customDrawer.dart';

class PageTwoView extends StatefulWidget {
  static String routeName = 'PageTwoView';

  @override
  _PageTwoViewState createState() => _PageTwoViewState();
}

class _PageTwoViewState extends State<PageTwoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          'Page Two',
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
