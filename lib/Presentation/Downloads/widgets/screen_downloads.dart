import 'package:flutter/material.dart';
import 'package:netflix_cpy/Core/colors.dart';
import 'package:netflix_cpy/Core/constants.dart';
import 'package:netflix_cpy/Presentation/widgets/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final List imageList = [
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kuf6dutpsT0vSVehic3EZIqkOBt.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kuf6dutpsT0vSVehic3EZIqkOBt.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kuf6dutpsT0vSVehic3EZIqkOBt.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: 'Downloads',
        ),
      ),
      body: ListView(
        children: [
          kWidth,
          Row(
            children: const [
              Icon(
                Icons.settings,
                color: kWhiteColor,
              ),
              kWidth,
              Text('Smart Downloads'),
            ],
          ),
          const Text('Introducing Downloads for you'),
          const Text(
            'We will download a personalised selection of movies and shows for you. So there is always something to watch on your device',
          ),
          Container(
              width: size.width,
              height: size.width,
              color: kWhiteColor,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: size.width * 0.4,
                    ),
                  ),
                  Container(
                    width: size.width * 0.4,
                    height: size.width * 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                          imageList[0],
                        ),
                      ),
                    ),
                  )
                ],
              )),
          MaterialButton(
            color: kButtonColorBlue,
            onPressed: () {},
            child: const Text(
              'Set up',
              style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          MaterialButton(
            color: kWhiteColor,
            onPressed: () {},
            child: const Text(
              'See what you can download',
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
