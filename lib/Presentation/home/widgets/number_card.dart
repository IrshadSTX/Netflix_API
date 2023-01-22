import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import 'package:netflix_cpy/Core/constants.dart';

class NumeberCard extends StatelessWidget {
  const NumeberCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg"),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 15,
          top: 80,
          child: BorderedText(
            child: Text(
              '${index + 1}',
              style: TextStyle(
                fontSize: 120,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
