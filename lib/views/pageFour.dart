import 'package:flutter/material.dart';
import 'package:profile/shared/customDrawer.dart';

class PageFourView extends StatefulWidget {
  static String routeName = 'PageFourView';

  @override
  _PageFourViewState createState() => _PageFourViewState();
}

class _PageFourViewState extends State<PageFourView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          'Page Four',
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
