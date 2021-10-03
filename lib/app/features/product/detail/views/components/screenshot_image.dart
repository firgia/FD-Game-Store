part of product_detail;

class _ScreenshotImage extends GetView<ProductDetailController> {
  const _ScreenshotImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.product.screenshotImages.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: (index == 0) ? kDefaultPadding : 0,
              right: kDefaultPadding,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: controller.product.screenshotImages[index],
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
