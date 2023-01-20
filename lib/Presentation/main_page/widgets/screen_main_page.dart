import 'package:flutter/material.dart';

import 'package:netflix_cpy/Presentation/Downloads/widgets/bottom_nav.dart';
import 'package:netflix_cpy/Presentation/Downloads/widgets/screen_downloads.dart';
import 'package:netflix_cpy/Presentation/fast_laugh/fast_laugh.dart';
import 'package:netflix_cpy/Presentation/home/screen_home.dart';
import 'package:netflix_cpy/Presentation/new_and_hot/new_and_hot.dart';
import 'package:netflix_cpy/Presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangedNotifier,
          builder: (context, index, child) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
