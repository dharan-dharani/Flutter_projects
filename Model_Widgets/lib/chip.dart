import 'package:flutter/material.dart';

class ChipWidgets extends StatefulWidget {
  const ChipWidgets({super.key});

  @override
  State<ChipWidgets> createState() => _ChipWidgetsState();
}

class _ChipWidgetsState extends State<ChipWidgets> {
  bool isChoiceSelected=false;
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: Center(
        child: ChoiceChip(
        label: const Text('Choice Chip'),
    selected: isChoiceSelected,
    onSelected: (bool selected) {
    setState(() {
    isChoiceSelected = selected;
    });
    },
    selectedColor: Colors.blue.shade100,
    avatar: isChoiceSelected ?  Icon(Icons.check) : null,
    ),

      ),
    );
  }
}
