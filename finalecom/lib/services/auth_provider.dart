import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import "../models/user_model.dart";

final authProvider = StateNotifierProvider<AuthNotifier, User?>((ref) {
  return AuthNotifier();
});

class AuthNotifier extends StateNotifier<User?> {
  AuthNotifier() : super(null) {
    LoadUser();
  }

  Future<String> login(String email, String password) async {
    final pref = await SharedPreferences.getInstance();
    final String? storedEmail = pref.getString('email');
    final String? storedPassword = pref.getString('password');
    final String? storeusername = pref.getString('username');
    final String? storephoneNumber = pref.getString('phone_number');

    if (storedEmail == email && storedPassword == password) {
      state = User(
          email: storedEmail!,
          password: storedPassword!,
          username: storeusername!,
          phoneNumber: storephoneNumber!);
      return 'Login Success';
    } else {
      return 'Login Failed';
    }
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('user');
    state = null;
  }

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final userString = prefs.getString('user');
    if (userString != null) {
      state = User.fromJson(userString as Map<String, dynamic>);
    }
  }
}

class LoadUser {}
