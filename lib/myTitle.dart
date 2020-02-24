import 'package:flutter/material.dart';

class myTitle extends StatelessWidget {
  String title;
  myTitle(String title) {
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
