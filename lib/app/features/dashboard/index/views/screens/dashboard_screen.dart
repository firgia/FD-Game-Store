library dashboard;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:game_store/app/config/routes/app_pages.dart';
import 'package:game_store/app/constans/app_constants.dart';
import 'package:game_store/app/shared_components/card_image.dart';
import 'package:game_store/app/shared_components/card_product.dart';
import 'package:game_store/app/shared_components/custom_icon_button.dart';
import 'package:game_store/app/utils/services/rest_api_service.dart';
import 'package:get/get.dart';

// bindings
part '../../bindings/dashboard_binding.dart';

// controllers
part '../../controllers/dashboard_controller.dart';

// components
part '../components/background_content.dart';
part '../components/background_image.dart';
part '../components/bottom_navbar.dart';
part '../components/category_buttons.dart';
part '../components/header.dart';
part '../components/newest_game.dart';
part '../components/popular_game.dart';
part '../components/search_text_field.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          _BackgroundImage(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 50),
                _Header(),
                SizedBox(height: 30),
                _SearchTextField(),
                SizedBox(height: 30),
                _BackgroundContent(
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      _CategoryButtons(),
                      SizedBox(height: 30),
                      _PopularGame(),
                      SizedBox(height: 30),
                      _NewestGame(),
                      SizedBox(height: 30),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _BottomNavbar(),
    );
  }
}
