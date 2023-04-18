import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'MyApp',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: Container(
          width: 100,
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: TextButton(
            child: const Text(
              'GO',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/SecondPage',
              );
            },
          ),
        ),
      ),
    );
  }
}
