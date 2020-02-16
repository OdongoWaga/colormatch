import 'package:colormatch/previewCircle.dart';
import 'package:colormatch/resetButton.dart';

import 'package:colormatch/sliders.dart';
import 'package:colormatch/submit.dart';

import 'package:flutter/material.dart';

import 'matches.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Match'),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text(
              'Match the Color',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              PreviewCircle(),
              Matches(),
            ],
          ),
          Sliders(),
          Submit(),
          ResetButton()
        ],
      ),
    );
  }
}
