import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_cpy/Core/constants.dart';

import 'package:netflix_cpy/Presentation/search/widgets/search_result.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uJYYizSuA9Y3DCs0qS4qWvHfZg4.jpg";

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.5),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              kHeight,
              // const Expanded(child: const SearchIdleWidget()),
              const Expanded(child: SearchResultWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
