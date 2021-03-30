import 'dart:io';
import 'package:flutter/material.dart';
import 'package:udalost/pages/EvenementHomePage.dart';
import 'package:udalost/pages/Accueil.dart';
import 'package:udalost/assets/Palette.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // mettre les objets qu'on va utiliser dans toute l'appli
  // mettre un utilisateur

  // Create storage to stock the jwt token
  // final storage = new FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Udalost',
      theme: ThemeData(
        primarySwatch: Palette.purpleNavy,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
    );
  }
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}