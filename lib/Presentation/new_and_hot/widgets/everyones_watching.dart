import 'package:flutter/material.dart';
import 'package:netflix_cpy/Core/colors.dart';
import 'package:netflix_cpy/Core/constants.dart';
import 'package:netflix_cpy/Presentation/home/widgets/custom_icon_widget.dart';
import 'package:netflix_cpy/Presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Friends',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'This hit sitcom follows the merry misadveentures of six 20 - something pals as they mavigate the pitfalls of work, life and love in 1990s  Manhattan. ',
            style: TextStyle(color: kGreyColor, fontSize: 12),
          ),
          const SizedBox(
            height: 60,
          ),
          const VideoWidget(),
          kHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              CustomButtonWidget(title: 'Share', icon: Icons.telegram_outlined),
              kWidth,
              CustomButtonWidget(title: 'My List', icon: Icons.add),
              kWidth,
              CustomButtonWidget(title: 'Play', icon: Icons.play_arrow),
            ],
          )
        ],
      ),
    );
  }
}
