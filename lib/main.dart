import 'package:chat_app/screens/startPage.dart';
import 'package:flutter/material.dart';
// import './screens/homePage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
                return MaterialApp(
                        title: 'Flutter Demo',
                        theme: ThemeData(
                                primaryColor:Colors.orange,
                        ),
                        debugShowCheckedModeBanner: false,
                        home: StartPage(),
                );
        }
}