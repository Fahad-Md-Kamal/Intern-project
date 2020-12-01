import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:profile/profilePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _fullName;
  String _contact;
  DateTime _dateOfBirth;
  final format = DateFormat("yyyy-MM-dd");

  _saveUsersInfo() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('name', _fullName);
    sharedPreferences.setString('contact', _contact);
    sharedPreferences.setString('dob', _dateOfBirth.toString());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'PROFILE FORM',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 60.0,
          ),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Divider(
                  height: 30.0,
                ),
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Full Name *',
                  ),
                  onSaved: (newValue) {
                    _fullName = newValue;
                  },
                  validator: (value) {
                    return value.isEmpty
                        ? 'Please enter your full name !!'
                        : null;
                  },
                ),
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Contact Number *',
                  ),
                  onSaved: (newValue) {
                    _contact = newValue;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your Contact Number!!';
                    } else if (!RegExp(r"^(?:[+0]9)?[0-9]{10,12}$")
                        .hasMatch(value)) {
                      return 'Plase enter valid contact number';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                DateTimeField(
                  format: format,
                  decoration: InputDecoration(
                    labelText: 'Date of Birth *',
                  ),
                  onShowPicker: (context, currentValue) {
                    return showDatePicker(
                        context: context,
                        firstDate: DateTime(1900),
                        initialDate: DateTime.now(),
                        lastDate: DateTime(2050));
                  },
                  validator: (value) {
                    if (value == null) {
                      return "Please select a date";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    _dateOfBirth = value;
                  },
                ),
                SizedBox(height: 20.0),
                RaisedButton(
                  color: Colors.green.shade600,
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      _saveUsersInfo();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileView(
                            contact: _contact,
                            dob: _dateOfBirth.toString(),
                            name: _fullName,
                          ),
                        ),
                      );
                    }
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
