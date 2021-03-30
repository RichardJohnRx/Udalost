import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:udalost/components/TextFieldContainer.dart';
import 'package:udalost/pages/SignUp.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _emailTFC = TextEditingController();
  final _motpasseTFC = TextEditingController();

  @override
  void dispose(){
    _emailTFC.dispose();
    _motpasseTFC.dispose();
    super.dispose();
  }

  _showDialog(BuildContext context){
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(_emailTFC.text + ': ' + _motpasseTFC.text),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Se connecter',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Color.fromRGBO(72, 72, 119, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 45.0,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                TextFieldContainer(
                  child: TextFormField(
                    controller: _emailTFC,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      icon: Icon(
                        Icons.person,
                        color: Color.fromRGBO(72, 72, 119, 1),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TextFieldContainer(
                  child: TextFormField(
                    controller: _motpasseTFC,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Mot de Passe',
                      icon: Icon(
                        Icons.vpn_key,
                        color: Color.fromRGBO(72, 72, 119, 1),
                      ),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Color.fromRGBO(72, 72, 119, 1),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                RaisedButton(
                    child: Text(
                      'Se connecter',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Raleway',
                      ),
                    ),
                    color: Color.fromRGBO(72, 72, 119, 1),
                    splashColor: Color.fromRGBO(114, 103, 193, 1),
                    padding: EdgeInsets.symmetric(
                      horizontal: 60.0,
                      vertical: 15.0,
                    ),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(50.0),
                    ),
                    onPressed: (){
<<<<<<< HEAD
                      auth();
=======
                      _showDialog(context);
>>>>>>> evenement
                    },
                  ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Don\'t have an account ? ',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        color: Color.fromRGBO(72, 72, 119, 1),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context){
                              return SignUp();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(72, 72, 119, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}