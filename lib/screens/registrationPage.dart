import 'package:chat_app/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationPage extends StatefulWidget {
          static String tag = 'registration-page';
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
        @override
        Widget build(BuildContext context) {
                return Scaffold(
                        appBar: AppBar(
                                title: const Text('First Route'),
                        ),
                        body: Center(
                                child: Text('I am here')
                        ),
                );
        }
}
