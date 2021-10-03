import 'package:flutter/material.dart';

class RatingIcon extends StatelessWidget {
  const RatingIcon({required this.rating, this.size = 24, Key? key})
      : assert(rating >= 0 && rating <= 5),
        super(key: key);

  final double rating;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        var _gap = size * .1;

        return Padding(
          padding: EdgeInsets.only(
            right: (index > 0 && index < 5) ? _gap : 0,
            left: (index == 5) ? _gap : 0,
          ),
          child: Icon(
            Icons.star,
            size: size,
            color: (rating.floor() > index) ? Colors.amber : Colors.grey,
          ),
        );
      }),
    );
  }
}
