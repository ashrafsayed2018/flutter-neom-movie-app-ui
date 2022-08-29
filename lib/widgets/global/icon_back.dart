import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_neon_app_ui/constants.dart';

class IconBack extends StatelessWidget {
  const IconBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Constants.kWhiteColor, width: 3),
      ),
      child: SvgPicture.asset("assets/svg/icon-back.svg"),
    );
  }
}
