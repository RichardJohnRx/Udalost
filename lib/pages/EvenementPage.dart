import 'package:flutter/material.dart';
import 'package:udalost/widgets/EvenementPreview.dart';

class EvenementPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Container(
              height: 210,
              child:ListView(
                scrollDirection: Axis.horizontal,
                children: new List.generate(10, (index){
                  return EvenementPreview(index: index,);
                }),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}


