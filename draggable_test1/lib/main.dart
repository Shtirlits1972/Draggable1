import 'package:draggable_test1/statful_vidget.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('MyApp'),
            centerTitle: true,
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyStatefulWidget(
                  dragText: '1',
                  targetText: 'ONE',
                  idWidget: 1,
                ),
                MyStatefulWidget(
                  dragText: '2',
                  targetText: 'TWO',
                  idWidget: 2,
                ),
              ])),
    );
  }
}
