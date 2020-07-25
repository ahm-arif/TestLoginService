//import 'package:http/http.dart' as http;
//import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert' show ascii, base64, json, jsonEncode,jsonDecode;
import 'package:wellness_center/constants.dart';
import 'package:wellness_center/src/models/user.dart';
import 'package:wellness_center/src/models/jwt.dart';

import 'package:http/http.dart' show Client;

class ApiService {

  Client client = Client();

  Future<String> getPublic() async {
    print('trying...');
    final String url = API_BASE_URL+'/api/v1/all';
    print(url);
    final response = await client.get(url);
    //print(response.body);
    //print(response.body);
    if (response.statusCode == 200) {
      
      return response.body;
     
    } else {
      return null;
    }
  }

  Future <User> loginUser(String username , String password) async {
    //Jwt data = new Jwt();
    final response = await client.post(
    SIGN_IN_URL,
    headers: {"content-type": "application/json"},
     body: jsonEncode(<String, String>{
      'username': username,
      'password': password
    }),
  );
  
  var parsedJson = json.decode(response.body);
  var user = User.fromJson(parsedJson);

  if (user.jwtToken!=null) {
    return user;
  } else {
    return null;
  } 
}

}