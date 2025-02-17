import 'package:flutter/foundation.dart';

class User{
  final String username;
  final String email;
  final String password;
  final String phoneNumber;

  User({
    required this.username, 
    required this.email, 
    required this.password, 
    required this.phoneNumber
  });

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'password': password,
      'phone_number': phoneNumber
    };
  }

// why to use factory-> 
factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'],
      email: json['email'],
      password: json['password'],
      phoneNumber: json['phone_number']
    );
  }

}
