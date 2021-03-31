import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:udalost/components/Map.dart';

class EvenementDetailPage extends StatefulWidget {
  @override
  _EvenementDetailPageState createState() => _EvenementDetailPageState();
}

class _EvenementDetailPageState extends State<EvenementDetailPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Stack(
        children: [
          MapWidget(
            lat: 48.6844952,
            lon: 6.1571303,
            isDetail: true,
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
      maxChildSize: 0.45,
      builder: (context, scrollController){
        return Container(
          child: InformationWidget(
            controller: scrollController,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(50),
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
