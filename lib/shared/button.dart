import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key key,
    @required buttonText,
    @required buttonColor,
    @required iconData,
    @required textColor,
    @required size,
    @required onPressed,
  })  : _buttonText = buttonText,
        _buttonColor = buttonColor,
        _iconData = iconData,
        _textColor = textColor,
        _size = size,
        _onPressed = onPressed,
        super(key: key);

  final String _buttonText;
  final Color _buttonColor;
  final IconData _iconData;
  final Color _textColor;
  final double _size;
  final Function _onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      elevation: 10.0,
      color: _buttonColor,
      icon: Icon(
        _iconData,
        size: _size,
        color: _textColor,
      ),
      label: Text(
        _buttonText,
        style: TextStyle(
          fontSize: _size,
          color: _textColor,
        ),
      ),
      onPressed: _onPressed,
    );
  }
}
