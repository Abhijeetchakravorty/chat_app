import 'package:chat_app/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
        final FirebaseAuth _auth = FirebaseAuth.instance;
        final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
        late String _email, _password;
        
        checkAuthentication() async {
                _auth.onAuthStateChanged.listen((user){
                        if(user!=null) {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        } 
                });

                @override
                void initState() {
                        super.initState();
                        this.checkAuthentication();
                }
        }
        @override
        Widget build(BuildContext context) {
                return Scaffold(
                        body: Container(
                                child: Column(children: <Widget>[
                                        Container(
                                                height: 400,
                                                child: Image(
                                                        image: AssetImage("images/user.png"),
                                                        fit: BoxFit.contain
                                                ),
                                        ),
                                        Container(
                                                child: Form(
                                                        key: _formKey,
                                                        child: Column(
                                                                children: <Widget>[
                                                                        Container(
                                                                                // child: TextFormField(validator:(input),
                                                                                //         {
                                                                                //                if(input.isEmpty)

                                                                                //                return 'Enter Email' 
                                                                                //         }
                                                                                // ),
                                                                        )
                                                                ],
                                                        )
                                                )
                                        ),
                                ],)
                        ),
                );
        }
}
