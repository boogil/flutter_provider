import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'counterLabel.dart';
import 'IncrementCounterButton.dart';
import 'myTitle.dart';

class myHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: myTitle("타이")),
      body: Center(child: counterLabel()),
      floatingActionButton: IncrementCounterButton(),
    );
  }
}
