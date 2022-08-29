import 'package:flutter/material.dart';
import 'package:movie_neon_app_ui/components/masked_image.dart';
import 'package:movie_neon_app_ui/constants.dart';
import 'package:movie_neon_app_ui/widgets/widgets.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Color(0xff19191b),
            ],
          ),
        ),
        child: Stack(
          children: [
            // movie poster
            MoviePoster(screenHeight: screenHeight, screenWidth: screenWidth),
            // top icons arrow back and menu icon
            Positioned(
              top: screenHeight * 0.05,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    // icon back button
                    IconBack(),

                    // menu icon button
                    MenuIcon(),
                  ],
                ),
              ),
            ),
            // play movie button
            PlayButton(screenHeight: screenHeight),
            //
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight * 0.5,
                transform: Matrix4.translationValues(0, screenHeight * 0.05, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MovieDetails(
                        screenWidth: screenWidth, screenHeight: screenHeight),
                    //
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Container(
                      height: 2,
                      width: screenWidth * 0.8,
                      color: Constants.kWhiteColor.withOpacity(0.15),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Casts",
                                style: TextStyle(
                                  color: Constants.kWhiteColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: screenHeight <= 667 ? 10 : 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Constants.kWhiteColor,
                                minRadius: 16,
                                maxRadius: screenWidth <= 375 ? 24 : 30,
                                backgroundImage: const NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn_k9TnMv5_nPnVbn_Hz-f7VMMaNCbrtNi9npyiLg&s"),
                              ),
                              Expanded(
                                child: Container(
                                  constraints: const BoxConstraints(
                                    maxHeight: 50,
                                    maxWidth: 112,
                                  ),
                                  transform:
                                      Matrix4.translationValues(-6, 0, 0),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: const [
                                      MaskedImage(
                                          asset: Constants.kMaskCast,
                                          mask: Constants.kMaskCast),
                                      Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            maxLines: 2,
                                            "anglina joli",
                                            style: TextStyle(
                                              color: Constants.kWhiteColor,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Constants.kWhiteColor,
                                minRadius: 16,
                                maxRadius: screenWidth <= 375 ? 24 : 30,
                                backgroundImage: const NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn_k9TnMv5_nPnVbn_Hz-f7VMMaNCbrtNi9npyiLg&s"),
                              ),
                              Expanded(
                                child: Container(
                                  constraints: const BoxConstraints(
                                    maxHeight: 50,
                                    maxWidth: 112,
                                  ),
                                  transform:
                                      Matrix4.translationValues(-6, 0, 0),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: const [
                                      MaskedImage(
                                          asset: Constants.kMaskCast,
                                          mask: Constants.kMaskCast),
                                      Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            maxLines: 2,
                                            "anglina joli",
                                            style: TextStyle(
                                              color: Constants.kWhiteColor,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MovieDetails extends StatelessWidget {
  const MovieDetails({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth * 0.7,
      child: Column(
        children: [
          // movie name
          Text(
            "eternal",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Constants.kWhiteColor.withOpacity(0.85)),
          ),
          SizedBox(
            height: screenHeight <= 667 ? 10 : 20,
          ),
          // movie description
          Text(
            "2021-action-adventure-fantasy-2hdmovie",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Constants.kWhiteColor.withOpacity(0.85)),
          ),
          const SizedBox(
            height: 20,
          ),
          // movie rating bar
          const MovieRating(),
          Text(
            "dfj dskj and this disf dlkf jis\n and hersa andf efdsf ",
            textAlign: TextAlign.center,
            maxLines: screenHeight <= 667 ? 2 : 4,
            style: TextStyle(
              fontSize: 14,
              color: Constants.kWhiteColor.withOpacity(0.75),
            ),
          ),
        ],
      ),
    );
  }
}
