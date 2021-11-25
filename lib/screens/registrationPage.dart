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
                                child: ElevatedButton(onPressed: () {
                                        Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => HomePage()),
                                        );
                                }, child: Text("Open Chat", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, ), ), style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                                        primary: Colors.blueAccent,
                                        shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10.0),
                                        )
                                )),
                        ),
                );
        }
}
