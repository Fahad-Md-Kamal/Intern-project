import 'package:flutter/material.dart';
import 'package:profile/shared/constants.dart';
import 'package:profile/shared/customDrawer.dart';
import 'package:profile/views/signInForm.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileView extends StatefulWidget {
  static String routeName = "ProfileView";

  final String name;
  final String contact;
  final String dob;

  ProfileView({this.name, this.contact, this.dob});

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  String _name;
  String _contact;
  String _dob;

  @override
  void initState() {
    _loadUserData();
    super.initState();
  }

  _loadUserData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      _name = sharedPreferences.getString('name');
      _contact = sharedPreferences.getString('contact');
      _dob = sharedPreferences.getString('dob');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          centerTitle: true,
          elevation: 10.0,
          title: Text(
            'Profile Detail',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
        body: _name == null
            ? Container()
            : SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 10.0),
                      CircleAvatar(
                        radius: 81.0,
                        backgroundColor: Colors.orange.shade800,
                        child: CircleAvatar(
                          radius: 80.0,
                          backgroundImage: AssetImage('images/profile.png'),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ProfileDataFields(fieldName: 'Name', data: _name),
                      ProfileDataFields(fieldName: 'Contact', data: _contact),
                      ProfileDataFields(
                        fieldName: 'Date Of Birth',
                        data: _dob.split(' ')[0],
                      ),
                      SizedBox(height: 10.0),
                      RaisedButton(
                        child: Text(
                          'Clear Data',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                        color: Colors.red,
                        onPressed: () async {
                          SharedPreferences sharedPreferences =
                              await SharedPreferences.getInstance();
                          setState(() {
                            sharedPreferences.clear();
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileForm(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}

class ProfileDataFields extends StatelessWidget {
  const ProfileDataFields({
    Key key,
    @required String fieldName,
    @required String data,
  })  : _fieldName = fieldName,
        _data = data,
        super(key: key);

  final String _fieldName;
  final String _data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        "$_fieldName :",
        style: xStyle,
      ),
      trailing: Text(
        _data,
        style: xStyle.copyWith(
          color: Colors.green.shade600,
        ),
      ),
    );
  }
}
