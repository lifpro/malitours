import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final String title;
  const AppBarTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.red,
      splashColor: Colors.green,
      radius: 50,
      child: Text(title),
      onTap: () => print('Salut'),
    );
  }
}
