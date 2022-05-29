import 'package:flutter/material.dart';
import 'package:flutter_101/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    return _SecondScreenState();
  }
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
          child: GestureDetector(
        key: const Key('second'),
        child: const Text(
          'Hola!',
          style: TextStyle(fontSize: 32),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const ThirdScreen(title: 'Third Screen')));
        },
      )),
    );
  }
}
