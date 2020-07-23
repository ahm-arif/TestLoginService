import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const TitleIcon({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        child: SvgPicture.asset(
          iconSrc,
          height: size.height*0.4,
          width: size.height*0.02,
        ),
      ),
    );
  }
}
