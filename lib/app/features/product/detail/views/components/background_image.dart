part of product_detail;

class _BackgroundImage extends GetView<ProductDetailController> {
  const _BackgroundImage({Key? key}) : super(key: key);
  static final height = Get.height * .4;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: controller.heroTag ?? "",
      child: Image(
        image: controller.product.backgroundImage,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
