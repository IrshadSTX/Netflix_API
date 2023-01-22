import 'package:flutter/material.dart';
import 'package:netflix_cpy/Core/constants.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadius20,
        image: const DecorationImage(
          image: NetworkImage(
              "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4x3pt6hoLblBeHebUa4OyiVXFiM.jpg"),
        ),
      ),
    );
  }
}
