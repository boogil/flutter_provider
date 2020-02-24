import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'IncrementCounterButton.dart';
import '../data/CounterBloc.dart';

class myHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomTitle("타이")),
      body: Center(child: counterLabel()),
      floatingActionButton: IncrementCounterButton(),
    );
  }
}

class counterLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterBlock = Provider.of<CounterBloc>(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('count: '),
        Text(
          '${counterBlock.count}',
          style: Theme.of(context).textTheme.display1,
        )
      ],
    );
  }
}

class CustomTitle extends StatelessWidget {
  String title;
  CustomTitle(String title) {
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
