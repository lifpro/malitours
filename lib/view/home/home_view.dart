import 'package:flutter/material.dart';
import 'package:malitours/view/home/widgets/home_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List villes = [
    {'name': 'Bamako', 'image': 'assets/images/bamako.jpeg', 'checked': false},
    {'name': 'Kayes', 'image': 'assets/images/kayes.jpeg', 'checked': true},
    {'name': 'Mopti', 'image': 'assets/images/mopti.jpeg', 'checked': false},
  ];
  checkFavori(v) {
    setState(() {
      var index = villes.indexOf(v);

      villes[index]['checked'] = !villes[index]['checked'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Padding(
        //   padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        //   child: FaIcon(FontAwesomeIcons.layerGroup),
        // ),
        title: InkWell(
          highlightColor: Colors.red,
          splashColor: Colors.green,
          radius: 50,
          child: const Text('Mali Tours'),
          onTap: () => print('Salut'),
        ),
        actions: const [
          Icon(Icons.more_vert),
        ],
      ),
      drawer: Container(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (var v in villes)
            HomeCard(
              name: v['name'],
              image: v['image'],
              checked: v['checked'],
              toggleFavorie: () => checkFavori(v),
            )
        ],
        // children: villes
        //     .map((v) => HomeCard(
        //           name: v['name'],
        //           image: v['image'],
        //           checked: v['checked'],
        //           toggleFavorie: () => checkFavori(v),
        //         ))
        //     .toList(),
      ),
    );
  }
}
