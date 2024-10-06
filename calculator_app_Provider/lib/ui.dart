import 'package:calculator_app/control.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UI extends StatefulWidget {
  const UI({super.key});
  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<UI> {
  Widget button(String bvalue) {
    return InkWell(
        onTap: () {
           context.read<control>().calculation(bvalue);
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            bvalue,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Center(
          child: Container(
            height: 500,
            width: 450,
            decoration: BoxDecoration(
              color: Colors.teal[100],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 150,
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.bottomRight,
                  child: 
                     Text(
                      context.watch<control>().result,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    
                  ),
                ),
                Container(
                    height: 350,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: 350,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              button("AC"),
                              button("C"),
                              button("%"),
                              button("/"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              button("7"),
                              button("8"),
                              button("9"),
                              button("x"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              button("4"),
                              button("5"),
                              button("6"),
                              button("-"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              button("1"),
                              button("2"),
                              button("3"),
                              button("+"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              button("00"),
                              button("0"),
                              button("."),
                              button("="),
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      
    );
  }
}
