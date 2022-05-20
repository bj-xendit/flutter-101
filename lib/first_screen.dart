import 'package:flutter/material.dart';
import 'package:flutter_101/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
            child: GestureDetector(
          child: const Text(
            'Hello!',
            style: TextStyle(fontSize: 28),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const SecondScreen(title: 'Second Screen')),
            );
          },
        )));
  }
}
