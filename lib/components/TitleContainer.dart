import 'package:flutter/material.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer(this.title,{
    Key key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Container(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.deepPurple,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              child: Ink(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: BorderSide(
                      color: Colors.deepPurple[300],
                      width: 1.5,
                    ),
                  ),
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                  color: Colors.deepPurple[300],
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}