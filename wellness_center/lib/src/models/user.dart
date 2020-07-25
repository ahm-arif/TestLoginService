

import 'dart:convert';

class User {
  int id;
  String username;
  String jwtToken;
  String email;
  List roles;
  String tokenType;

  String getUsername(){
    return this.username;
  }
  User({
    this.id,
    this.username,
    this.jwtToken,
    this.email,
    this.roles,
    this.tokenType}
    );
// konversi map ke class model
  factory User.fromJson(Map<String, dynamic> json) {
      return User(
        id: json['id'],
        username: json['username'],
        jwtToken: json['accessToken'],
        email:json['email'],
        roles:json['roles'],
        tokenType: json['tokenType']
      );
    }
// class model ke ma
  Map<String, dynamic> toJson(){
    return {
      "id":id,
      "username":username,
      "accessToken":jwtToken,
      "email":email,
      "roles":roles,
      "tokenType":tokenType

    };
  }

  // @override
  // String toString() {
  //   return 'User{id: $id,username: $username,accessToken: $jwtToken,email: $email,roles: $roles,tokenType: $tokenType}';
  // }
//json ke class model

}

  List<User> userFromJson (String jsonData){
    final data = json.decode(jsonData);
    return List<User>.from(data.map((item)=>User.fromJson(item)));
 
  }
  
  // model ke json
  String userToJson(User user){
    final jsonData = user.toJson();
    return json.encode(jsonData);
  }
