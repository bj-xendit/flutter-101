import 'package:flutter/material.dart';
import 'package:flutter_101/first_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState() {
    return _ThirdScreen();
  }
}

class _ThirdScreen extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const FirstScreen(title: 'First Screen')),
                ModalRoute.withName(''));
          },
          child: const Text(
            'Namaste!',
            style: TextStyle(
              fontSize: 38,
            ),
          ),
        )));
  }
}
