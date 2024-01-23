import 'package:flutter/material.dart';
import 'package:malitours/models/site_model.dart';

class SiteCard extends StatelessWidget {
  final SiteModel site;

  const SiteCard({
    super.key,
    required this.site,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(
          site.image,
        ),
      ),
      title: Text(site.nom),
      subtitle: Text(site.adresse),
      trailing: Column(
        children: [
          const Text('Tarif'),
          Text(site.tarif.toString()),
        ],
      ),
    );
  }
}
