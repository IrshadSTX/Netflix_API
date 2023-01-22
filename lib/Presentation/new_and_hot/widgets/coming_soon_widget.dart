import 'package:flutter/material.dart';
import 'package:netflix_cpy/Core/colors.dart';
import 'package:netflix_cpy/Core/constants.dart';

import '../../home/widgets/custom_icon_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: 450,
          width: 50,
          child: Column(
            children: const [
              Text(
                'FEB',
                style: TextStyle(
                    color: kGreyColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              Text(
                '11',
                style: TextStyle(
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Image.network(
                      kTempImgHotNew,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(0.5),
                      radius: 25,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.volume_off,
                          color: kWhiteColor,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Tall Girls 2',
                    style: TextStyle(
                      letterSpacing: -1,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        title: 'Remind me',
                        icon: Icons.notifications_active,
                        iconSize: 20,
                        fontSize: 8,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        title: 'Info',
                        icon: Icons.info_outline,
                        iconSize: 20,
                        fontSize: 8,
                      ),
                      kWidth
                    ],
                  )
                ],
              ),
              const Text('Coming on Friday'),
              kHeight,
              kHeight,
              Text(
                'Tall Girl 2',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight,
              Text(
                'Landing the lead in the school musical is a\ndream come true for Jodi, until the pressure\nsends her confidence -- and her relationship --\n into a tailspin.',
                style: TextStyle(color: kGreyColor, fontSize: 12),
              )
            ],
          ),
        ),
      ],
    );
  }
}
