import 'package:flutter/material.dart';

class ShowAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final List<Widget> actions;

  ShowAlertDialog({
   required this.title,
   required this.content,
    this.actions = const [],
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        this.title,
        style: Theme.of(context).textTheme.headline6,
      ),
      actions: this.actions,
      content: Text(
        this.content,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}