import 'package:flutter/material.dart';
import 'package:malitours/view/home/home_view.dart';
import 'package:malitours/view/site/site_details_view.dart';
import 'package:malitours/view/site/site_view.dart';

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
        appBarTheme: const AppBarTheme(color: Colors.amber),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeView(),
        '/site': (context) => SiteView(),
        '/sitedetails': (context) => SiteDetailView(),
      },
      //home: HomeView() //HomeView(),
    );
  }
}
