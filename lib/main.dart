import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'myHomePage.dart';
import 'data/CounterBloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CounterBloc())],
      child: Consumer<CounterBloc>(
        builder: (context, counterBlock, _) {
          return MaterialApp(
            home: myHomePage(),
          );
        },
      ),
    );
  }
}
