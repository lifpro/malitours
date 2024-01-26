import 'package:flutter/material.dart';

class SiteDetailView extends StatefulWidget {
  const SiteDetailView({super.key});

  @override
  State<SiteDetailView> createState() => _SiteDetailViewState();
}

class _SiteDetailViewState extends State<SiteDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Détail Site x'),
      ),
      body: Container(),
    );
  }
}
