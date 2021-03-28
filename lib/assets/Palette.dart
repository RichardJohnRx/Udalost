import 'package:flutter/material.dart';

final _purpleNavyHEX = 0xFF484877;

final Map<int, Color> _purpleNavyMap = {
  50:Color.fromRGBO(72,72,119,0.1),
  100:Color.fromRGBO(72,72,119,0.2),
  200:Color.fromRGBO(72,72,119,0.3),
  300:Color.fromRGBO(72,72,119,0.4),
  400:Color.fromRGBO(72,72,119,0.5),
  500:Color.fromRGBO(72,72,119,0.6),
  600:Color.fromRGBO(72,72,119,0.7),
  700:Color.fromRGBO(72,72,119,0.8),
  800:Color.fromRGBO(72,72,119,0.9),
  900:Color.fromRGBO(72,72,119,1),
};

MaterialColor purpleNavy = MaterialColor(_purpleNavyHEX, _purpleNavyMap);