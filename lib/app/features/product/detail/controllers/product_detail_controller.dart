part of product_detail;

class ProductDetailController extends GetxController {
  late final Product product;
  String? heroTag;

  @override
  void onInit() {
    super.onInit();
    heroTag = Get.parameters['hero_tag'];

    product = Get.arguments as Product;
  }
}
