

import 'dart:convert';

class Jwt {

  String username;
  String password;


  Jwt({

    this.username,

    this.password
  }
    );
// konversi map ke class model
  factory Jwt.fromJson(Map<String, dynamic> json) {
      return Jwt(
        username: json['username'],   
        password:json['password'],

      );
    }
// class model ke map
  Map<String, dynamic> toJson(){
    return {
      "username":username,

      "password":password


    };
  }

  @override
  String toString() {
    return 'Jwt{username: $username,password: $password}';
  }
//json ke class model

}

  List<Jwt> jwtFromJson (String jsonData){
    final data = json.decode(jsonData);
    return List<Jwt>.from(data.map((item)=>Jwt.fromJson(item)));
  }
  
  // model ke json
  String jwtToJson(Jwt Jwt){
    final jsonData = Jwt.toJson();
    return json.encode(jsonData);
  }
