import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String name;
  final String image;
  final bool checked;
  final Function() toggleFavorie;
  const HomeCard(
      {super.key,
      required this.name,
      required this.image,
      required this.checked,
      required this.toggleFavorie});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 150,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Ink.image(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
              child: InkWell(
                onTap: toggleFavorie,
              ),
            ),
            Center(
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              height: 20,
              padding: const EdgeInsets.only(top: 5, right: 5),
              alignment: Alignment.topRight,
              child: checked
                  ? const Icon(
                      Icons.star_rate,
                      color: Colors.yellow,
                    )
                  : const Icon(
                      Icons.star_border,
                      color: Colors.white,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
