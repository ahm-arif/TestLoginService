import 'package:flutter/material.dart';
import 'package:wellness_center/Screens/Signup/signup_screen.dart';
import 'package:wellness_center/components/title.dart';
import 'package:wellness_center/components/rounded_button.dart';
import 'package:wellness_center/components/no_border_input_field.dart';
import 'package:wellness_center/components/rounded_password_field.dart';
import 'package:wellness_center/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wellness_center/components/social_icon.dart';
import 'package:wellness_center/components/already_have_an_account_acheck.dart';
import 'package:wellness_center/src/utils/validation.dart';
class Body extends StatefulWidget {
  @override
  _Body createState() => _Body();
  const Body({
    Key key,
  }) : super(key: key);
}

class _Body extends State<Body> with Validation{
    final formKey = GlobalKey<FormState>();

    String username = '';
    String password = '';

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
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TitleIcon(
                            iconSrc: "assets/icons/wellness.svg",
                            press: () {},
                          ),
                        // new Text(
                        //   wellness,
                        //   style: GoogleFonts.itim(
                        //         textStyle: TextStyle(
                        //           color:whiteColor, 
                        //           fontSize: 40),
                        //       ),
                        // )
                        
                      ],
                    ),
                  ),
   
                  Center(
                    child :Container(
                    padding: EdgeInsets.only(bottom : size.height*0.4, top: size.height*0.3, left: size.width*0.01, right: size.width*0.01),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child :Container (
                            width: size.width*0.85,
                              margin: EdgeInsets.all(20.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40.0),
                                        color: whiteColor,
                                      ),

                              child: SingleChildScrollView(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
        

                                      SizedBox(height: size.height * 0.02),
                                      NoBorderInputField(
                                        hintText: "Username or Email",
                                        icon: Icons.person,
                                        onChanged: (value) 
                                        {
                                        },
                                        //validator: validateName(username),
                                        // onSaved: (value){
                                        //   username = value;
                                        // },
                                      ),
                                      RoundedPasswordField(
                                        onChanged: (value) {},
                                      ),
                                      RoundedButton(
                                        text: "SIGN IN",
                                        press: () {

                                        },
                                      ),
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            SocalIcon(
                                              iconSrc: "assets/icons/facebook.svg",
                                              press: () {},
                                            ),
                                            SocalIcon(
                                              iconSrc: "assets/icons/google-plus.svg",
                                              press: () {},
                                            ),
                                          ],
                                        ),
                                      SizedBox(height: size.height * 0.003),
                                      AlreadyHaveAnAccountCheck(
                                        
                                        press: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return SignUpScreen();
                                              },
                                            ),
                                          );
                                        },
                                      ),
                                      SizedBox(height: size.height * 0.05),
                                  ]
                                )
                              )  
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

