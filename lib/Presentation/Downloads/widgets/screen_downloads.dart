import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_cpy/Core/colors.dart';
import 'package:netflix_cpy/Core/constants.dart';
import 'package:netflix_cpy/Presentation/widgets/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final List imageList = [
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kuf6dutpsT0vSVehic3EZIqkOBt.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uKvVjHNqB5VmOrdxqAt2F7J78ED.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uJYYizSuA9Y3DCs0qS4qWvHfZg4.jpg"
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
                    radius: size.width * 0.35,
                  ),
                ),
                DownloadsImageWidget(
                  size: Size(
                    size.width * 0.3,
                    size.width * 0.5,
                  ),
                  imageList: imageList[0],
                  margin: EdgeInsets.only(left: 130, bottom: 30),
                  angle: 20,
                ),
                DownloadsImageWidget(
                  imageList: imageList[1],
                  margin: EdgeInsets.only(right: 130, bottom: 30),
                  angle: -20,
                  size: Size(
                    size.width * 0.3,
                    size.width * 0.5,
                  ),
                ),
                DownloadsImageWidget(
                  imageList: imageList[2],
                  margin: EdgeInsets.only(bottom: 30),
                  size: Size(
                    size.width * 0.4,
                    size.width * 0.6,
                  ),
                )
              ],
            ),
          ),
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

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    this.angle = 0,
    required this.size,
    required this.margin,
    this.radius = 10,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          image: DecorationImage(
            image: NetworkImage(
              imageList,
            ),
          ),
        ),
      ),
    );
  }
}
