import 'package:flutter/material.dart';
import 'package:malitours/models/site_model.dart';
import 'package:malitours/models/tests_arguments.dart';
import 'package:malitours/view/site/site_details_view.dart';
import 'package:malitours/view/site/widgets/site_card.dart';
import 'package:malitours/widgets/app_bar_title.dart';

import '../../models/data.dart' as data;

class SiteView extends StatefulWidget {
  final List<SiteModel> sites = data.sites;
  SiteView({super.key});

  @override
  State<SiteView> createState() => _SiteViewState();
}

class _SiteViewState extends State<SiteView> {
  @override
  Widget build(BuildContext context) {
    final TestsArguments params =
        ModalRoute.of(context)!.settings.arguments as TestsArguments;

    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(
          title: 'Liste des sites de ${params.param1}',
        ),
      ),
      body: ListView.builder(
        itemCount: widget.sites.length,
        itemBuilder: (context, index) => SiteCard(
          site: widget.sites[index],
          viewDetail: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SiteDetailView()))
          },
        ),
      ),
    );
  }
}
