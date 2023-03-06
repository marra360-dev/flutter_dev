import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flying Pigs"),
      ),
      body: Center(
        child: Text("Hello world!"),
      ),
    );
  }
}
