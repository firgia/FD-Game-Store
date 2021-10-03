part of dashboard;

class DashboardController extends GetxController {
  final _productService = ProductService();
  final _userService = UserService();

  late final User user;
  late final List<Product> popularGame;
  late final List<Product> newestGame;

  @override
  void onInit() {
    super.onInit();

    user = _userService.getUserLogin();
    popularGame = _productService.getPopularGame();
    newestGame = _productService.getNewestGame();
  }

  void goToDetail(Product product, {required String heroTag}) {
    Get.toNamed(
      Routes.productDetail,
      arguments: product,
      parameters: {'hero_tag': "$heroTag"},
    );
  }

  String getPopularGameTag(Product product) {
    return "popular_game=${product.id}";
  }

  String getNewestGameTag(Product product) {
    return "newest_game=${product.id}";
  }
}
