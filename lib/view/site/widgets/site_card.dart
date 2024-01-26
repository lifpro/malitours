import 'package:flutter/material.dart';
import 'package:malitours/models/site_model.dart';

class SiteCard extends StatelessWidget {
  final SiteModel site;
  final Function() viewDetail;
  const SiteCard({
    super.key,
    required this.site,
    required this.viewDetail,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: viewDetail,
      leading: CircleAvatar(
        backgroundImage: AssetImage(
          site.image,
        ),
      ),
      title: Text(site.nom),
      subtitle: Row(
        children: [
          RichText(
              text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                TextSpan(
                    text: site.adresse,
                    style: const TextStyle(color: Colors.black)),
                const TextSpan(
                    text: ',', style: TextStyle(color: Colors.black)),
                const TextSpan(text: ' tarif : '),
                TextSpan(
                    text: site.tarif.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue)),
              ])),
        ],
      ),
      trailing: Checkbox(
        value: true,
        onChanged: (e) => {},
        activeColor: Colors.blue,
        checkColor: Colors.white,
      ),
    );
  }
}
