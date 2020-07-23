import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert' show json, base64, ascii;
import 'package:wellness_center/constants.dart';

Future<String> attemptLogIn(String username, String password) async {
  print (username);
  print(password);
  try{
  var res = await http.post(
    SIGN_IN_URL,
    body: {
      "username": username,
      "password": password
    }
  );
  if(res.statusCode == 200) return res.body;
  return null;
  }catch (error){
    print(error);
  }
}