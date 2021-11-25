import 'package:chat_app/screens/registrationPage.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_signin_button/button_builder.dart';
import 'package:chat_app/screens/homePage.dart';


class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
        @override
        void initState() {
                super.initState();
                // Firebase.initializeApp().whenComplete(() { 
                //         print("completed");
                //         setState(() {});
                // });
        }
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
  final _formKey = GlobalKey<FormState>();

//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  String _errorMessage = '';

  get _auth => null;

  get credential => null;

  void onChange() {
    setState(() {
      _errorMessage = '';
    });
  }

 

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

    emailController.addListener(onChange);
    passwordController.addListener(onChange);

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('images/user.png'),
      ),
    );

    final errorMessage = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '$_errorMessage',
        style: TextStyle(fontSize: 14.0, color: Colors.red),
        textAlign: TextAlign.center,
      ),
    );

    final email = TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty || !value.contains('@')) {
          return 'Please enter a valid email.';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      controller: emailController,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      textInputAction: TextInputAction.next,
      onEditingComplete: () => node.nextFocus(),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: passwordController,
      textInputAction: TextInputAction.done,
      onFieldSubmitted: (v) {
        FocusScope.of(context).requestFocus(node);
      },
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
        //   if (_formKey.currentState!.validate()) {
        //     signIn(emailController.text, passwordController.text)
        //         .then((uid) => {
        //                 Navigator.push(
        //                         context,
        //                         MaterialPageRoute(builder: (context) => HomePage()),
        //                 )
        //         })
        //         .catchError((error) => {processError(error)});
        //   }
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    final registerButton = Padding(
      padding: EdgeInsets.zero,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
                 Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightGreen,
        child: Text('Register', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
        appBar: AppBar(
                title: const Text('Login'),                        
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Form(
            key: _formKey,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                logo,
                SizedBox(height: 24.0),
                errorMessage,
                SizedBox(height: 12.0),
                email,
                SizedBox(height: 8.0),
                password,
                SizedBox(height: 24.0),
                loginButton,
                registerButton,
                forgotLabel
              ],
            ),
          ),
        ));
  }

        // Future<User?> currentUser() async {
        //         final UserCredential authResult = await _auth.signInWithCredential(credential);
        //         final User? user = authResult.user;
        //         return user;
        // }

  void processError(final PlatformException error) {
    if (error.code == "ERROR_USER_NOT_FOUND") {
      setState(() {
        _errorMessage = "Unable to find user. Please register.";
      });
    } else if (error.code == "ERROR_WRONG_PASSWORD") {
      setState(() {
        _errorMessage = "Incorrect password.";
      });
    } else {
      setState(() {
        _errorMessage =
            "There was an error logging in. Please try again later.";
      });
    }
  }

  signIn(String text, String text2) {}
}