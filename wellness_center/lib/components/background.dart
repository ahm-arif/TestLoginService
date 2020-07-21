import 'package:flutter/material.dart';
import 'package:wellness_center/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
      return SingleChildScrollView(
        child: Container(
          color: greyColor,
         //height:size.height*0.4,
          child: Column(
            children: <Widget>[

              Stack(
                children: <Widget>[
                  
                  Container(
                    margin: EdgeInsets.only(bottom: 20.0),
                    alignment: Alignment.topCenter,
                    height:size.height*0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(30,20),
                        bottomRight: Radius.elliptical(30,20),
                      ),
                      color:blueColor,
                    ),
                  ),
                ]
              )
            ]
          )
        )
      );
  }
}
