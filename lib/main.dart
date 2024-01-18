import 'package:flutter/material.dart';
import 'package:malitours/view/home/home_view.dart';

void main() {
  runApp(const MaliTours());
}

class MaliTours extends StatelessWidget {
  const MaliTours({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mali Tours',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: HomeView(),
    );
  }
}
