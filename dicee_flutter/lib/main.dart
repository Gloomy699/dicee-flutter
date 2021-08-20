import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 5;
    var rightDiceNumber = 3;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                print('left button got press');
              },
              child: Image.asset('assets/images/dice$leftDiceNumber.png'),
            ),
          ),
          // SizedBox(
          //   width: 32.0,
          // ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('right button got press');
              },
              child: Image.asset('assets/images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
