import 'package:flutter/material.dart';
import 'package:wellness_center/Screens/Signup/signup_screen.dart';
import 'package:wellness_center/Screens/Home/home_screen.dart';
import 'package:wellness_center/components/title.dart';
import 'package:wellness_center/components/rounded_button.dart';
import 'package:wellness_center/components/no_border_input_field.dart';
import 'package:wellness_center/components/rounded_password_field.dart';
import 'package:wellness_center/constants.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:wellness_center/components/social_icon.dart';
import 'package:wellness_center/components/already_have_an_account_acheck.dart';
import 'package:wellness_center/src/utils/validation.dart';

import 'package:wellness_center/src/utils/sso_google.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' show json;

// GoogleSignIn _googleSignIn = GoogleSignIn(
//   scopes: <String>[
//     'email',
//     'https://www.googleapis.com/auth/contacts.readonly',
//   ],
// );


class Body extends StatefulWidget {
  @override
  _Body createState() => _Body();
  const Body({
    Key key,
  }) : super(key: key);
}

class _Body extends State<Body>{
  // GoogleSignInAccount _currentUser;
  // String _contactText;

  // @override
  // void initState() {
  //   super.initState();
  //   _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account) {
  //     setState(() {
  //       _currentUser = account;
  //     });
  //     if (_currentUser != null) {
  //       _handleGetContact();
  //     }
  //   });
  //   print(_currentUser);
  //  // _googleSignIn.signInSilently();
  // }

  // Future<void> _handleGetContact() async {
  //   setState(() {
  //     _contactText = "Loading contact info...";
  //   });
  //   final http.Response response = await http.get(
  //     'https://people.googleapis.com/v1/people/me/connections'
  //     '?requestMask.includeField=person.names',
  //     headers: await _currentUser.authHeaders,
  //   );
  //   if (response.statusCode != 200) {
  //     setState(() {
  //       _contactText = "People API gave a ${response.statusCode} "
  //           "response. Check logs for details.";
  //     });
  //     print('People API ${response.statusCode} response: ${response.body}');
  //     return;
  //   }
  //   final Map<String, dynamic> data = json.decode(response.body);
  //   final String namedContact = _pickFirstNamedContact(data);
  //   setState(() {
  //     if (namedContact != null) {
  //       _contactText = "I see you know $namedContact!";
  //     } else {
  //       _contactText = "No contacts to display.";
  //     }
  //   });
  // }

  // String _pickFirstNamedContact(Map<String, dynamic> data) {
  //   final List<dynamic> connections = data['connections'];
  //   final Map<String, dynamic> contact = connections?.firstWhere(
  //     (dynamic contact) => contact['names'] != null,
  //     orElse: () => null,
  //   );
  //   if (contact != null) {
  //     final Map<String, dynamic> name = contact['names'].firstWhere(
  //       (dynamic name) => name['displayName'] != null,
  //       orElse: () => null,
  //     );
  //     if (name != null) {
  //       return name['displayName'];
  //     }
  //   }
  //   return null;
  // }

  // Future<void> _handleSignIn() async {
  //   print('hmmm');
  //   try {
  //     _googleSignIn.signIn().then((GoogleSignInAccount acc) async {
  //       GoogleSignInAuthentication auth = await acc.authentication;
  //       print(acc.id);
  //       print(acc.email);
  //       print(acc.displayName);
  //       print(acc.photoUrl);
  //       acc.authentication.then((GoogleSignInAuthentication auth) async {
  //         print(auth.idToken);
  //         print(auth.accessToken);
  //       });
  //     });
      
  //   } catch (error) {
  //     print(error);
  //   }
  // }

  // Future<void> _handleSignOut() => _googleSignIn.disconnect();

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
                                              //login();
                                        },
                                        ),
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            SocalIcon(
                                              iconSrc: "assets/icons/facebook.svg",
                                              press: () {
                                                      // still need to set up the id in fb
                                                    },
                                            ),
                                            SocalIcon(
                                              iconSrc: "assets/icons/google-plus.svg",
                                              press: () {
                                                signInWithGoogle().whenComplete(() {
                                                        Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                            builder: (context) {
                                                              return HomeScreen();
                               
                                                            },
                                                          ),
                                                        );
                                                      });},
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
