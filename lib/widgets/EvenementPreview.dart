import 'package:flutter/material.dart';

class EvenementPreview extends StatelessWidget {
  EvenementPreview({this.index});

  final int index;
  final double width = 200;
  final double height = 190;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.deepPurple[100],
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: height * 0.55,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.55,
            child: Container(
              width: width,
              height: height * 0.45,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        children:[
                          Text(
                            'Titre',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          Text('Description'),
                          Text('Adresse'),
                          Text('Créateur'),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      padding: EdgeInsets.only(
                        top: 10.0,
                        left: 15.0,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children:[
                          Text('10h00'),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      padding: EdgeInsets.only(
                        top: 2.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: width * 0.25,
            left: height * 0.1,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.5,
                vertical: 9.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      '0$index',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 19.0,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    Text(
                      'Jul',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 19.0,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}