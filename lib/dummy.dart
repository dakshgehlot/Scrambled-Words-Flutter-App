import 'package:flutter/material.dart';

class Dummy extends StatelessWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Text("Hello, world!", style: TextStyle(
          color: Colors.white
        ),),
      ),
    );
  }
}
