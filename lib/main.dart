import 'package:flutter/services.dart';
import 'package:flutter_app/Jogar.dart';
import 'package:flutter/material.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]);   /* Orientação de tela, nesse caso não
                                                 é possivel girar a tela */
  runApp(MaterialApp(
    home: Jogar(),
    debugShowCheckedModeBanner: false,
  ));
}

