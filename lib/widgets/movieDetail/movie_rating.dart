import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_neon_app_ui/constants.dart';

class MovieRating extends StatelessWidget {
  const MovieRating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
        itemSize: 14,
        initialRating: 3.5,
        maxRating: 1,
        unratedColor: Constants.kWhiteColor,
        direction: Axis.horizontal,
        itemPadding: const EdgeInsets.symmetric(horizontal: 1),
        itemBuilder: (context, index) {
          return const Icon(
            Icons.star,
            color: Constants.kYellowColor,
          );
        },
        onRatingUpdate: (index) {
          debugPrint(index.toString());
        });
  }
}
