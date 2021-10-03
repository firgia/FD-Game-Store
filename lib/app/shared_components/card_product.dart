import 'package:flutter/material.dart';
import 'package:game_store/app/constans/app_constants.dart';
import 'package:game_store/app/shared_components/rating_icon.dart';
import 'package:get/get.dart';
import 'package:game_store/app/utils/ui/ui_utils.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({required this.data, required this.onPressed, Key? key})
      : super(key: key);
  final CardProductData data;
  final Function() onPressed;
  final _borderRadius = 15.0;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(_borderRadius),
      child: InkWell(
        borderRadius: BorderRadius.circular(_borderRadius),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
          child: Row(
            children: [
              _iconImage(data.image),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    _nameText(data.name),
                    _categoryText(data.category),
                    _ratingAndInstallButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconImage(ImageProvider image) {
    return SizedBox(
      width: 70,
      height: 70,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(image: image),
      ),
    );
  }

  Widget _nameText(String name) {
    return Text(
      GetUtils.capitalize(name)!,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _categoryText(String category) {
    return Text(
      GetUtils.capitalize(category)!,
      style: TextStyle(color: Colors.grey),
    );
  }

  Widget _ratingAndInstallButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RatingIcon(
          rating: data.rating,
          size: 15,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Install"),
        ).small()
      ],
    );
  }
}

class CardProductData {
  final ImageProvider image;
  final String name;
  final String category;
  final double rating;

  CardProductData({
    required this.image,
    required this.name,
    required this.category,
    required this.rating,
  });
}
