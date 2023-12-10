import 'package:flutter/material.dart';
import 'package:movie_db_app/screens/signin.dart';
import 'package:movie_db_app/screens/signup.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  bool showLoginPage = true;

  void togglePage(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(onTap: togglePage);
    }

    return RegisterPage(onTap: togglePage);
  }
}