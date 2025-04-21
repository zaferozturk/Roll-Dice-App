import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(MaterialApp(home: Scaffold(body: GradientContainer())));
  });
}
