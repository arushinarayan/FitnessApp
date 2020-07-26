import 'package:fitnessapp/screens/home/home_screen.dart';
import 'package:fitnessapp/screens/login/login_screen.dart';
import 'package:fitnessapp/services/auth.dart';
import 'package:fitnessapp/widgets/widget.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _animationName= "Build";
  final _formKey = GlobalKey<FormState>();
  String email, password, name;
  AuthService authService = new AuthService();

  bool _isLoading = false;

  signUp() {
    if (_formKey.currentState.validate()) {
      setState(() {
        _isLoading = true;
      });
      authService.signUpwithEmailandPassword(email, password).then((val) {
        if (val != null) {
          setState(() {
            _isLoading = false;
          });
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171E28),
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: _isLoading
          ? Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      )
          : Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                child: FlareActor(
                  "assets/Flame.flr",
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  animation: _animationName,
                ),
              ),
              Spacer(),
              TextFormField(
                style: TextStyle(
                  color: Colors.white,
                ),
                validator: (val) {
                  return val.isEmpty ? "Enter Email ID" : null;
                },
                decoration: InputDecoration(hintText: "Email", hintStyle: TextStyle(fontSize: 18.0, color:Colors.white.withOpacity(0.4))),
                onChanged: (val) {
                  email = val;
                },
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.white,
                ),
                validator: (val) {
                  return val.isEmpty ? "Enter Name" : null;
                },
                decoration: InputDecoration(hintText: "Name", hintStyle: TextStyle(fontSize: 18.0, color:Colors.white.withOpacity(0.4))),
                onChanged: (val) {
                  name = val;
                },
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.white,
                ),
                obscureText: true,
                validator: (val) {
                  return val.isEmpty ? "Enter Password" : null;
                },
                decoration: InputDecoration(hintText: "Password", hintStyle: TextStyle(fontSize: 18.0, color:Colors.white.withOpacity(0.4))),
                onChanged: (val) {
                  password = val;
                },
              ),
              SizedBox(
                height: 6,
              ),
              SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  signUp();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  decoration: BoxDecoration(
                      color: Color(0xfff56363), borderRadius: BorderRadius.circular(30)),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 48,
                  child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(fontSize: 15.5, color: Colors.white),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignIn()));
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            fontSize: 15.5,
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ))
                ],
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
