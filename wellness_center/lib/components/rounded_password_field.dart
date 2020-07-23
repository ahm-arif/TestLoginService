import 'package:flutter/material.dart';
import 'package:wellness_center/components/text_field_no_border.dart';
import 'package:wellness_center/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldNoContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: blueColor,
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(color: blueColor),
          icon: Icon(
            Icons.lock,
            color: blueColor,
          ),
          // suffixIcon: Icon(
          //   Icons.visibility,
          //   color: blueColor,
          // ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
