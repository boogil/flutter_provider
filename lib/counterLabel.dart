import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/CounterBloc.dart';

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
