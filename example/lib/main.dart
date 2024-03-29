import 'package:flutter/material.dart';
import 'package:flutter_size_matters/flutter_size_matters.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScallingConfig().init(context);
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!',style: TextStyle(fontSize: ScallingConfig.moderateScale(14)),),
        ),
      ),
    );
  }
}