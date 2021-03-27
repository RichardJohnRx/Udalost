import 'package:flutter/material.dart';
import 'package:udalost/components/TextFieldContainer.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  'Se connecter',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Color.fromRGBO(72, 72, 119, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 45.0,
                  ),
                ),
                margin: EdgeInsets.only(
                  bottom: 65.0,
                ),
              ),
              TextFieldContainer(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    icon: Icon(
                      Icons.person,
                      color: Color.fromRGBO(72, 72, 119, 1),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              TextFieldContainer(
                child: TextField(
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
              Container(
                child: RaisedButton(
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
                  onPressed: (){},
                ),
                margin: EdgeInsets.only(
                  top: 25.0,
                  bottom: 10.0,
                ),
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
                      /*Navigator.push(context, MaterialPageRoute(
                          builder: (context){
                            return SignUp();
                          },
                        ),
                      );*/
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
            ],
          ),
        ),
      ),
    );
  }
}