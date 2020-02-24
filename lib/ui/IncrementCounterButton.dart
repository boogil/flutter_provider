import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/CounterBloc.dart';

class IncrementCounterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterBlock = Provider.of<CounterBloc>(context);

    return FloatingActionButton(
      onPressed: () => counterBlock.increment(),
      tooltip: '증가',
      child: const Icon(Icons.add),
    );
  }
}
