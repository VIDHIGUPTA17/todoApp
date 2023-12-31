import 'package:flutter/material.dart';
import 'package:todoapp/Screens/login.dart';
import 'package:todoapp/Screens/register.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLogin = true;
  void togglePages() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin = true) {
      return Login(
        onTap: togglePages,
      );
    } else {
      return Register(onTap: togglePages);
    }
  }
}
