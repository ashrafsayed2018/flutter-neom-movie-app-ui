import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_neon_app_ui/components/custom_outline.dart';
import 'package:movie_neon_app_ui/constants.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.1,
              left: -86,
              child: Container(
                height: 166,
                width: 166,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kPinkColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaY: 200,
                    sigmaX: 200,
                  ),
                  child: Container(
                    width: 166,
                    height: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.3,
              right: -88,
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kGreenColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaY: 200,
                    sigmaX: 200,
                  ),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * 0.07,
                ),
                CustomOutline(
                  strokeWidth: 4,
                  radius: screenWidth * 0.8,
                  padding: const EdgeInsets.all(4),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Constants.kPinkColor,
                      Constants.kPinkColor.withOpacity(0),
                      Constants.kGreenColor.withOpacity(0.1),
                      Constants.kGreenColor,
                    ],
                    stops: const [0.2, 0.4, 0.6, 1],
                  ),
                  width: screenWidth * 0.7,
                  height: screenWidth * 0.7,
                  child: Container(
                      decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/img-onboarding.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomLeft,
                    ),
                  )),
                ),
                SizedBox(
                  height: screenHeight * .09,
                ),
                Text(
                  "Watch Movies In\n Virtual Reality",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenHeight <= 667 ? 18 : 34,
                    fontWeight: FontWeight.bold,
                    color: Constants.kWhiteColor.withOpacity(0.85),
                  ),
                ),
                SizedBox(
                  height: screenHeight * .035,
                ),
                Text(
                  "Download and watch offline \n whenever you are",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenHeight <= 667 ? 12 : 16,
                    color: Constants.kWhiteColor.withOpacity(0.75),
                  ),
                ),
                SizedBox(
                  height: screenHeight * .025,
                ),
                CustomOutline(
                  strokeWidth: 3,
                  radius: 20,
                  padding: const EdgeInsets.all(3),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Constants.kPinkColor,
                      Constants.kGreenColor,
                    ],
                  ),
                  width: 160,
                  height: 38,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Constants.kPinkColor.withOpacity(.5),
                            Constants.kGreenColor.withOpacity(.5),
                          ],
                        )),
                    child: const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 14,
                          color: Constants.kWhiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Container(
                      height: 7,
                      width: 7,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 4,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == 0
                            ? Constants.kGreenColor
                            : Constants.kWhiteColor.withOpacity(.2),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
