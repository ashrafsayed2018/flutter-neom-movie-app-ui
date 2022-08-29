import 'package:flutter/material.dart';
import 'package:movie_neon_app_ui/constants.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
    required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight * 0.42,
      right: 9,
      child: Container(
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(3),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(0xfffe53bb),
              Color(0xff095b3d),
            ],
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Constants.kGreyColor,
          ),
          child: const Icon(
            Icons.play_arrow,
            color: Constants.kWhiteColor,
          ),
        ),
      ),
    );
  }
}
