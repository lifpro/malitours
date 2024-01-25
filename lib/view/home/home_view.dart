import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:malitours/view/home/widgets/home_card.dart';
import 'package:malitours/widgets/app_bar_title.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  DateTime? mydate = DateTime.now();
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

  setDate() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 50)))
        .then((value) => {setState(() => mydate = value)});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Padding(
        //   padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        //   child: FaIcon(FontAwesomeIcons.layerGroup),
        // ),
        title: AppBarTitle(
          title: 'Mali Tours',
        ),
        actions: const [
          Icon(Icons.more_vert),
        ],
      ),
      drawer: Container(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 100,
            child: Row(children: [
              Expanded(child: Text(DateFormat("EEEE DD yyyy").format(mydate!))),
              ElevatedButton(
                child: const Text('Select Date'),
                onPressed: () => setDate(),
              ),
            ]),
          ),
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
