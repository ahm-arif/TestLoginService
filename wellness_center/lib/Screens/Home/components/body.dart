import 'package:flutter/material.dart';

import 'package:wellness_center/Screens/Login/login_screen.dart';
import 'package:wellness_center/constants.dart';


import 'package:wellness_center/src/utils/sso_google.dart';

import 'package:wellness_center/src/utils/secure_storage.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

SecureStoreMixin secureStoreMixin;


//final storage = FlutterSecureStorage();

Future<String> getUsername() async {
    String value = await FlutterSecureStorage().read(key: 'username');
  
    return value;

}

Future<String> getEmail() async {

    String valueEmail = await FlutterSecureStorage().read(key: 'email');
    return valueEmail;

}

class Body extends StatefulWidget {
  @override
  _Body createState() => _Body();
  const Body({
    Key key,
  }) : super(key: key);
}

class _Body extends State<Body> with SecureStoreMixin{
  String _username;
  String _email;

//   @override
//   void initState() {
//     super.initState();
// ;
//   }
   
   
   
       // getSecureStore('email', (email) { 
       //   _email=email;
       //   });
   
     
     
    
     @override
     Widget build(BuildContext context) {
   
      getUsername().then((data) {
        setState(() {
          this._username = data; 
        });
      });
      getEmail().then((data) {
        setState(() {
          this._email = data; 
        });
      });
       //getUsername();
       print('ssffghf');
       print(_username);
       print(_email);
       return Scaffold(
         body: Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.topRight,
               end: Alignment.bottomLeft,
               colors: [Colors.blue[100], Colors.blue[400]],
             ),
           ),

           child: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               mainAxisSize: MainAxisSize.max,
               children: <Widget>[
                 CircleAvatar(
                   backgroundImage: NetworkImage(
                     imageUrl??DEFAULT_IMAGE,
                   ),
                   radius: 60,
                   backgroundColor: Colors.transparent,
                 ),
                 SizedBox(height: 40),
                 Text(
                   'NAME',
                   style: TextStyle(
                       fontSize: 15,
                       fontWeight: FontWeight.bold,
                       color: Colors.black54),
                 ),
                
                 Text(
                   name??(_username??'default name'),
                   //name??_username,
                   style: TextStyle(
                       fontSize: 25,
                       color: Colors.deepPurple,
                       fontWeight: FontWeight.bold),
                 ),
                 SizedBox(height: 20),
                 Text(
                   'EMAIL',
                   style: TextStyle(
                       fontSize: 15,
                       fontWeight: FontWeight.bold,
                       color: Colors.black54),
                 ),
                 Text(
                   email??(_email??'default email'),
                   //email??_email,
                   style: TextStyle(
                       fontSize: 25,
                       color: Colors.deepPurple,
                       fontWeight: FontWeight.bold),
                 ),
                 SizedBox(height: 40),
                 RaisedButton(
                   onPressed: () {
                     delSecureStore();
                     signOutGoogle();
                     Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return LoginScreen();}), ModalRoute.withName('/'));
                   },
                   color: Colors.deepPurple,
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(
                       'Sign Out',
                       style: TextStyle(fontSize: 25, color: Colors.white),
                     ),
                   ),
                   elevation: 5,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(40)),
                 )
               ],
             ),
           ),
             
         )
         );

     }
   }
   
   mixin getSecureStorage {
}
