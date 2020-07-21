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
          
          child: Column(
            children: <Widget>[

              Stack(
                children: <Widget>[
                  
                  Container(
                    margin: EdgeInsets.only(bottom: 20.0),
                    alignment: Alignment.topCenter,
                    height:size.height*0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(30,20),
                        bottomRight: Radius.elliptical(30,20),
                      ),
                      color:blueColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                       
                        new Text(
                          wellness,
                          style: GoogleFonts.itim(
                                textStyle: TextStyle(
                                  color:whiteColor, 
                                  fontSize: 40),
                              ),
                        )
                        
                      ],
                    
                    ),
                  ),
   
                  Center(
                    child :Container(
                    padding: EdgeInsets.only(bottom : size.height*0.4, top: size.height*0.4, left: size.width*0.01, right: size.width*0.01),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child :Container (
                            width: 400,
                              margin: EdgeInsets.all(15.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40.0),
                                        color: whiteColor,
                                      ),

                            ) 
                        )  
                      
                  ),
                  )
                ],
                )
            ]
                    )
                  )
                  );
  }
}
