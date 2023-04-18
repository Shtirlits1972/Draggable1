import 'package:draggable_test1/draggable_vidget.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MyApp'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DraggableWidget(
              dragText: '1',
              targetText: 'ONE',
              idWidget: 1,
            ),
            DraggableWidget(
              dragText: '2',
              targetText: 'TWO',
              idWidget: 2,
            ),
          ],
        ),
      ),
    );
  }
}
