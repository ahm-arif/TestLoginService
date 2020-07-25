import 'package:flutter/material.dart';
import 'package:wellness_center/Screens/Signup/signup_screen.dart';
import 'package:wellness_center/Screens/Home/home_screen.dart';
import 'package:wellness_center/components/title.dart';
import 'package:wellness_center/components/rounded_button.dart';
import 'package:wellness_center/components/no_border_input_field.dart';
//import 'package:wellness_center/components/rounded_password_field.dart';
import 'package:wellness_center/constants.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:wellness_center/components/social_icon.dart';
import 'package:wellness_center/components/already_have_an_account_acheck.dart';
import 'package:wellness_center/src/utils/dialog.dart';
import 'package:wellness_center/src/utils/validation.dart';

import 'package:wellness_center/src/utils/sso_google.dart';
import 'package:wellness_center/src/networks/api.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wellness_center/src/utils/secure_storage.dart';



ApiService apiService;
String token;


//import 'package:wellness_center/src/utils/validation.dart';

// GoogleSignIn _googleSignIn = GoogleSignIn(
//   scopes: <String>[
//     'email',
//     'https://www.googleapis.com/auth/contacts.readonly',
//   ],
// );

final storage = FlutterSecureStorage();
  // Future<String> attemptLogIn(String username, String password) async {
  //   var res = await http.post(
  //     SIGN_IN_URL,
  //     body: {
  //       "username": username,
  //       "password": password
  //     }
  //   );
  //   if(res.statusCode == 200) return res.body;
  //   return null;
  // }
class Body extends StatefulWidget {
  @override
  _Body createState() => _Body();
  const Body({
    Key key,
  }) : super(key: key);
}

class _Body extends State<Body> with Validation,SecureStoreMixin{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool autoValidate = false;
  
  String username;
  String password;
  @override
  void initState() {
    super.initState();
    apiService = ApiService();
    signOutGoogle();
  }
  void _validateInputs() async {
    if (_formKey.currentState.validate()) {
  //    If all data are correct then save data to out variables
    _formKey.currentState.save();

    try {
     
    final _futureUser = apiService.loginUser(username,password);
    _futureUser.then((data) async  {
        if(data!= null) {
         // print(data.email);
          // setSecureStore('username', data.username);
          // setSecureStore('email', data.email);
          //
          await storage.write(key: 'username', value: data.username);
          await storage.write(key: 'email', value: data.email);

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen()
              )
            );
          } else {
            displayDialog(context, "An Error Occurred", "No account was found matching that username and password");
          } 
   
    }, onError: (e) {
        print(e);
      });
    //  var t ='a';

    }catch(error){
        
    }

    } else {
  //    If all data are not valid then start auto validation.
      setState(() {
        autoValidate = true;
      });
    }
  }
  
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
                      children: <Widget>[
                        TitleIcon(
                            iconSrc: "assets/icons/wellness.svg",
                            press: () {},
                          ),
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
                                child: new Form(
                                key: _formKey,
                                autovalidate: autoValidate,
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
          

                                        SizedBox(height: size.height * 0.02),
                                        NoBorderInputField(
                                          hintText: "Username or Email",
                                          icon: Icons.person,
                                          validator: validateName,
                                          onSaved: (value) 
                                          {
                                            username = value;
                                          },
                                          //obscureText: false,

                                        ),
                                        NoBorderInputField(
                                          hintText: "Password",
                                          icon: Icons.lock,
                                          validator: validatePassword,
                                          onSaved: (value) 
                                          {
                                            password = value;
                                          },
                                          obscureText: true,

                                        ),
                                        // RoundedPasswordField(
                                        //   onChanged: (value) {},
                                        // ),
                                        RoundedButton(
                                          text: "SIGN IN",
                                          press: () {
                                                 _validateInputs();
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
