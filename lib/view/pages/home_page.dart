import 'package:flutter/material.dart';
import 'package:flutter_dev/view/widgets/post_card.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flying Pigs"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return PostCard();
        },
      ),
    );
  }
}
