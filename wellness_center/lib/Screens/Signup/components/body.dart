import 'package:flutter/material.dart';
import 'package:wellness_center/Screens/Login/login_screen.dart';

// import 'package:wellness_center/components/or_divider.dart';
import 'package:wellness_center/components/social_icon.dart';
import 'package:wellness_center/components/already_have_an_account_acheck.dart';
import 'package:wellness_center/constants.dart';
import 'package:wellness_center/components/rounded_button.dart';
import 'package:wellness_center/components/no_border_input_field.dart';
// import 'package:wellness_center/components/rounded_password_field.dart';

class Body extends StatelessWidget {
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
                    margin: EdgeInsets.only(bottom: 10.0),
                    alignment: Alignment.topCenter,
                    height:size.height*0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(30,20),
                        bottomRight: Radius.elliptical(30,20),
                      ),
                      color:blueColor,
                    ),

                  ),
   
                  Center(
                    child :Container(
                    padding: EdgeInsets.only(bottom : size.height*0.4, top: size.height*0.1, left: size.width*0.01, right: size.width*0.01),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child :Container (
                            width: size.width*0.9,
                              margin: EdgeInsets.all(15.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40.0),
                                        color: whiteColor,
                                      ),

                              child: SingleChildScrollView(
                                child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(height: size.height * 0.005),
                                      NoBorderInputField(
                                        hintText: "First Name",
                                        onChanged: (value) {},
                                      ),
                                      NoBorderInputField(
                                        hintText: "Last Name",
                                        onChanged: (value) {},
                                      ),
                                      NoBorderInputField(
                                        hintText: "Date of Birth",
                                        onChanged: (value) {},
                                      ),
                                      NoBorderInputField(
                                        hintText: "Address",
                                        onChanged: (value) {},
                                      ),
                                      NoBorderInputField(
                                        hintText: "Phone number",
                                        onChanged: (value) {},
                                      ),
                                      NoBorderInputField(
                                        hintText: "E-mail",
                                        onChanged: (value) {},
                                      ),                                    
                                      RoundedButton(
                                        text: "CREATE ACCOUNT",
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
                                        login:false,
                                        press: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return LoginScreen();
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
