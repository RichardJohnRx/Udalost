import 'package:flutter/material.dart';
import 'package:udalost/assets/Palette.dart';
import 'package:udalost/components/TitleContainer.dart';
import 'package:udalost/widgets/EvenementPreview.dart';

class EvenementDetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.purpleNavy,
      body: Stack(
        children: [
          Center(
            child: Text(
              'Insert Mapa Ici',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          BottomModal(),
        ],
      ),
    );
  }
}

class BottomModal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.03,
      minChildSize: 0.03,
      maxChildSize: 0.4,
      builder: (context, scrollController){
        return Container(
          child: InformationWidget(
            controller: scrollController,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
          ),
        );
      }
    );
  }
}

class InformationWidget extends StatelessWidget {
  InformationWidget({this.controller});
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.009,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.012,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.009,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Title',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 4,
                ),
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 4,
                ),
                child: Text(
                  'Date et heure',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 4,
                ),
                child: Text(
                  'Adresse',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 4,
                ),
                child: Text(
                  'Code Postal',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 4,
                ),
                child: Text(
                  'Ville',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 4,
                ),
                child: Text(
                  'Pays',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 4,
                ),
                child: Text(
                  'Type',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Participants'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
