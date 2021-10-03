library product_detail;

import 'package:flutter/material.dart';
import 'package:game_store/app/constans/app_constants.dart';
import 'package:game_store/app/shared_components/rating_icon.dart';
import 'package:game_store/app/utils/services/rest_api_service.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:game_store/app/utils/ui/ui_utils.dart';

// binding
part '../../bindings/product_detail_binding.dart';

// controller
part '../../controllers/product_detail_controller.dart';

// component
part '../components/back_button.dart';
part '../components/background_image.dart';
part '../components/description.dart';
part '../components/header.dart';
part '../components/install_button.dart';
part '../components/rating_and_review.dart';
part '../components/screenshot_image.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            _BackgroundImage(),
            Container(
              margin: EdgeInsets.only(top: _BackgroundImage.height - 30),
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  _Header(),
                  SizedBox(height: 20),
                  _ScreenshotImage(),
                  SizedBox(height: 20),
                  _Description(),
                  SizedBox(height: 20),
                  _RatingsAndReview(),
                  SizedBox(height: 20),
                ],
              ),
            ),
            _BackButton(),
          ],
        ),
      ),
      bottomNavigationBar: _InstallButton(),
    );
  }
}
