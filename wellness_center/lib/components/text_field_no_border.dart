import 'package:flutter/material.dart';
import 'package:wellness_center/constants.dart';

class TextFieldNoContainer extends StatelessWidget {
  final Widget child;
  const TextFieldNoContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.7,
      decoration: BoxDecoration(
        border: Border(
           bottom: BorderSide(width: 0.9, color:darkBlueColor),
        )
      ),
      child: child,
    );
  }
}
