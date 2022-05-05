import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveButton extends StatelessWidget {
  // const AdaptiveButton({Key? key}) : super(key: key);

  final String text;
  final Function hanlder;

  AdaptiveButton(this.text, this.hanlder);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: hanlder(),
            child: const Text(
              'text',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            color: Theme.of(context).primaryColor)
        : FlatButton(
            onPressed: hanlder(),
            child: const Text(
              'Choose Date',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            textColor: Theme.of(context).primaryColor);
  }
}
