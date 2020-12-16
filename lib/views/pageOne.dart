import 'package:flutter/material.dart';
import 'package:profile/shared/customDrawer.dart';

class PageOneView extends StatefulWidget {
  static String routeName = 'PageOneView';

  @override
  _PageOneViewState createState() => _PageOneViewState();
}

class _PageOneViewState extends State<PageOneView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          'Page One',
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
