import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:udalost/assets/Palette.dart';
import 'package:udalost/pages/Accueil.dart';
import 'package:udalost/pages/EvenementDetailPage.dart';
import 'package:udalost/pages/EvenementHomePage.dart';
import 'package:udalost/pages/EvenementMasterPage.dart';
import 'package:udalost/pages/EvenementSavePage.dart';
import 'package:udalost/pages/SignIn.dart';
import 'package:udalost/pages/SignUp.dart';

class UdalostApp extends StatelessWidget {
  // mettre les objets qu'on va utiliser dans toute l'appli
  // mettre un utilisateur

  // Create storage to stock the jwt token
  final storage = new FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Udalost',
      theme: ThemeData(
        primarySwatch: Palette.purpleNavy,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes:{
        '/': (context) => Accueil(),
        '/signIn': (context) => SignIn(),
        '/signUp': (context) => SignUp(),
        '/evenement': (context) => EvenementHomePage(),
        '/evenement/list': (context) => EvenementMaster(),
        '/evenement/detail': (context) => EvenementDetailPage(),
        '/evenement/save': (context) => EvenementSavePage(),
      }
    );
  }
}