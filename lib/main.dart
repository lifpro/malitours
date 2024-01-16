import 'package:flutter/material.dart';

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
            // leading: const Padding(
            //   padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            //   child: FaIcon(FontAwesomeIcons.layerGroup),
            // ),
            title: const Text('Mali Tours'),
            actions: const [
              Icon(Icons.more_vert),
            ],
          ),
          drawer: Container(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 5,
                child: Container(
                  height: 150,
                  color: Colors.green,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/images/bamako.jpeg',
                        fit: BoxFit.fill,
                      ),
                      const Center(
                        child: Text(
                          'Bamako',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 150,
                  color: Colors.green,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/images/kayes.jpeg',
                        fit: BoxFit.fill,
                      ),
                      const Center(
                        child: Text(
                          'Kayes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 150,
                  color: Colors.green,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/images/mopti.jpeg',
                        fit: BoxFit.fill,
                      ),
                      const Center(
                        child: Text(
                          'Mopti',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ) //const MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}
