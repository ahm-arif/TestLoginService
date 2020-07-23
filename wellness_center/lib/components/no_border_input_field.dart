import 'package:flutter/material.dart';
import 'package:wellness_center/components/text_field_no_border.dart';
import 'package:wellness_center/constants.dart';

class NoBorderInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onSaved;
  final validator;
  final obscureText;
  // final onSaved;
  const NoBorderInputField({
    Key key,
    this.hintText,
    this.icon,
    this.onSaved,
    this.validator,
    this.obscureText=false,
    // this.onSaved
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldNoContainer(
      child: TextFormField(
        onSaved: onSaved,
        validator: validator,
        obscureText: obscureText,
        // onSaved: onSaved,
        cursorColor: blueColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: blueColor,
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: blueColor),
          border: InputBorder.none,
            //isDense: true, 
            //contentPadding: EdgeInsets.all(10) 
        ),
      ),
    );
  }
}
