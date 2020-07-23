import 'package:flutter/material.dart';
import 'package:wellness_center/components/text_field_no_border.dart';
import 'package:wellness_center/constants.dart';

class NoBorderInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  // final validator;
  // final onSaved;
  const NoBorderInputField({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged,
    // this.validator,
    // this.onSaved
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldNoContainer(
      child: TextFormField(
        onChanged: onChanged,
        // validator: validator,
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
