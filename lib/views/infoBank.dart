import 'package:flutter/material.dart';
import 'package:profile/shared/button.dart';
import 'package:profile/shared/customDrawer.dart';

class InfoBankView extends StatefulWidget {
  static String routeName = 'InfoBankView';

  @override
  _InfoBankViewState createState() => _InfoBankViewState();
}

class _InfoBankViewState extends State<InfoBankView> {
  List<String> _infoBank = [
    'I Searched',
    'I found',
    'I Copied',
    'I Pest',
    'I\'m a software Developer'
  ];

  TextEditingController _infoController = TextEditingController();
  int selectedText = 0;

  @override
  void initState() {
    _infoController.text = _infoBank[selectedText];
    super.initState();
  }

  _prevInfo() {
    setState(() {
      selectedText--;
      _infoController.text = _infoBank[selectedText];
    });
  }

  _nextInfo() {
    setState(() {
      selectedText++;
      _infoController.text = _infoBank[selectedText];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        elevation: 10.0,
        centerTitle: true,
        title: Text('Information Sequences'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .47,
              color: Colors.red.shade50,
              child: Image.asset('images/logo.png'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              height: MediaQuery.of(context).size.height * .41,
              color: Colors.green.shade50,
              child: Column(
                children: [
                  TextField(
                    controller: _infoController,
                    enabled: false,
                    style: TextStyle(fontSize: 30.0),
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(
                          buttonText: 'Prev',
                          buttonColor: Colors.blueGrey,
                          iconData: Icons.arrow_left,
                          textColor: Colors.white,
                          size: 20.0,
                          onPressed: selectedText == 0
                              ? null
                              : () {
                                  _prevInfo();
                                },
                        ),
                        CustomIconButton(
                          buttonText: 'Next',
                          buttonColor: Colors.blueGrey,
                          iconData: Icons.arrow_right,
                          textColor: Colors.white,
                          size: 20.0,
                          onPressed: selectedText == _infoBank.length - 1
                              ? null
                              : () {
                                  _nextInfo();
                                },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
