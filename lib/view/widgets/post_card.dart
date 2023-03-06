import 'package:flutter/material.dart';
import 'package:flutter_dev/helper/demo_values.dart';

class PostCard extends StatelessWidget {
  const PostCard();

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6 / 3,
      child: Card(
        elevation: 2,
        child: Container(
          margin: const EdgeInsets.all(4.0),
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: <Widget>[
              _Post(),
              _PostDetails(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Post extends StatelessWidget {
  const _Post();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        children: <Widget>[_PostImage(), _PostTitleAndSummary()],
      ),
    );
  }
}

class _PostTitleAndSummary extends StatelessWidget {
  const _PostTitleAndSummary();

  @override
  Widget build(BuildContext context) {
    final titleTheme = Theme.of(context).textTheme.headlineSmall;
    final summaryTheme = Theme.of(context).textTheme.bodyMedium;
    final String title = DemoValues.postTitle;
    final String summary = DemoValues.postSummary;

    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(title, style: titleTheme),
          Text(summary, style: summaryTheme),
        ],
      ),
    );
  }
}

class _PostImage extends StatelessWidget {
  const _PostImage();

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: 2, child: Image.asset(DemoValues.postImage));
  }
}

class _PostDetails extends StatelessWidget {
  const _PostDetails();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[_UserImage(), _UserNameAndEmail()],
    );
  }
}

class _UserNameAndEmail extends StatelessWidget {
  const _UserNameAndEmail();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(DemoValues.userName),
          Text(DemoValues.userEmail),
        ],
      ),
    );
  }
}

class _UserImage extends StatelessWidget {
  const _UserImage();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: CircleAvatar(
        backgroundImage: AssetImage(DemoValues.userImage),
      ),
    );
  }
}
