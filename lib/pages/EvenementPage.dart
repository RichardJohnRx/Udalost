import 'package:flutter/material.dart';
import 'package:udalost/components/TitleContainer.dart';
import 'package:udalost/widgets/EvenementPreview.dart';

class EvenementPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TitleContainer('Tes Événements'),
            Container(
              height: 210,
              child:ListView(
                scrollDirection: Axis.horizontal,
                children: new List.generate(10, (index){
                  return EvenementPreview(index: index,);
                }),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            TitleContainer('Invitations'),
            Container(
              height: 210,
              child:ListView(
                scrollDirection: Axis.horizontal,
                children: new List.generate(10, (index){
                  return EvenementPreview(index: index,);
                }),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            TitleContainer('Événements publics'),
            Container(
              height: 210,
              child:ListView(
                scrollDirection: Axis.horizontal,
                children: new List.generate(10, (index){
                  return EvenementPreview(index: index,);
                }),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
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


