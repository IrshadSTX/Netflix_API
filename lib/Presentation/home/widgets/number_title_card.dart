import 'package:flutter/material.dart';
import 'package:netflix_cpy/Core/constants.dart';
import 'package:netflix_cpy/Presentation/home/widgets/number_card.dart';
import 'package:netflix_cpy/Presentation/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: 'Top 10 Tv Shows In India Today',
        ),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => NumeberCard(index: index)),
          ),
        )
      ],
    );
  }
}
