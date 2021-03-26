import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Bienvenue',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Color.fromRGBO(72, 72, 119, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 50.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 60.0,
              ),
              child: Text(
                'Lorem ipsum dolor sit amet et delectus accommodare his consul',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              child: RaisedButton(
                child: Text(
                  'S\'inscrire',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                color: Color.fromRGBO(72, 72, 119, 1),
                splashColor: Color.fromRGBO(114, 103, 193, 1),
                padding: EdgeInsets.only(
                  top: 15.0,
                  bottom: 15.0,
                  right: 60.0,
                  left: 60.0,
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(50.0),
                ),
                onPressed: (){},
              ),
              margin: EdgeInsets.only(
                bottom: 7.0,
              ),
            ),
            Container(
              child: RaisedButton(
                child: Text(
                  'Se connecter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(72, 72, 119, 1),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                color: Colors.white,
                splashColor: Color.fromRGBO(220, 220, 255, 1),
                padding: EdgeInsets.only(
                  top: 12.0,
                  bottom: 12.0,
                  right: 40.0,
                  left: 40.0,
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(50.0),
                  side: BorderSide(
                    color: Color.fromRGBO(72, 72, 119, 1),
                    width: 3,
                  ),
                ),
                onPressed: (){},
              ),
              margin: EdgeInsets.only(
                top: 7.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}