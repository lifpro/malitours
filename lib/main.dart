import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        home: Scaffold(
          appBar: AppBar(
            leading: const Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: FaIcon(FontAwesomeIcons.layerGroup),
            ),
            title: const Text('Mali Tours'),
            actions: const [
              Icon(Icons.more_vert),
            ],
          ),
          body: const Center(child: Text('Salut')),
        ) //const MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}
