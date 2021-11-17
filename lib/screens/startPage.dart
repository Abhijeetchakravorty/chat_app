import 'package:chat_app/screens/loginPage.dart';
import 'package:chat_app/screens/registrationPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
class StartPage extends StatefulWidget {
        static String tag = 'start-page';
        @override
        _StartPageState createState() => _StartPageState();
}
class _StartPageState extends State < StartPage > {
        @override
        Widget build(BuildContext context) {
                return Scaffold(body: Container(child: Column(children: < Widget > [
                        SizedBox(height: 35.0),
                        Container(height: 400, child: Image(image: AssetImage("images/user.png"), fit: BoxFit.contain, ), ),
                        RichText(text: TextSpan(text: 'Welcome to Rokyo', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.blueAccent), children: < TextSpan > [
                                TextSpan(text: 'Chat', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.orange))
                        ])),
                        SizedBox(height: 30.0, ),
                        Text('Text instantly from anywhere', style: TextStyle(color: Colors.black), ),
                        Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: < Widget > [
                                ElevatedButton(
                                        onPressed: () {
                                                Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => LoginPage()),
                                                );
                                        }, child: Text("Login", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, ), ), 
                                        style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                                                primary: Colors.orange,
                                                shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10.0),
                                                )
                                )),
                                SizedBox(width: 30.0,),
                                ElevatedButton(onPressed: () {
                                        Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => RegistrationPage()),
                                        );
                                }, child: Text("Register", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, ), ), style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                                        primary: Colors.blueAccent,
                                        shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10.0),
                                        )
                                )),
                        ], ),
                        SizedBox(height: 30.0),
                        SignInButton(
                                Buttons.Google,
                                text: "Sign up with Google",
                                onPressed: () {},
                        )
                ], ), ));
        }
}