import 'package:flutter/material.dart';
import 'package:model_widgets/dateandtimepickers.dart';
// import 'package:model_widgets/chip.dart';
// import 'package:model_widgets/dropDown.dart';
// import 'package:model_widgets/navigation/homepage.dart';
// import 'package:model_widgets/navigation/navigationrail.dart';
// import 'package:model_widgets/animatedText.dart';
// import 'package:model_widgets/radioButton.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Model Widgets',
      home: Dateandtimepickers(),
    );
  }
}
