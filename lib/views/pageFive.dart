import 'package:flutter/material.dart';
import 'package:profile/shared/customDrawer.dart';

class PageFiveView extends StatefulWidget {
  static String routeName = 'PageFiveView';

  @override
  _PageFiveViewState createState() => _PageFiveViewState();
}

class _PageFiveViewState extends State<PageFiveView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'Page Five',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      appBar: AppBar(),
      drawer: CustomDrawer(),
    );
  }
}
