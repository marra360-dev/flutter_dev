import 'package:flutter/material.dart';
import 'package:flutter_dev/view/widgets/post_card.dart';

class PostPage extends StatelessWidget {
  const PostPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flying Pigs"),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return PostCard();
        },
      ),
    );
  }
}
