part of product_detail;

class _Header extends GetView<ProductDetailController> {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          _iconImage(controller.product.iconImage),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _nameText(controller.product.name),
                SizedBox(height: 5),
                _categoryText(controller.product.category),
                SizedBox(height: 10),
                _ratingAndTotalDownload(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _iconImage(ImageProvider image) {
    return SizedBox(
      width: 80,
      height: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(image: image),
      ),
    );
  }

  Widget _nameText(String name) {
    return Text(GetUtils.capitalize(name)!,
        style: Theme.of(Get.context!).textTheme.headline6);
  }

  Widget _categoryText(String category) {
    return Text(
      GetUtils.capitalize(category)!,
      style: TextStyle(color: Colors.grey),
    );
  }

  Widget _ratingAndTotalDownload() {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        SizedBox(width: 2),
        Text(
          controller.product.rating.toString(),
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 20),
        Icon(
          Icons.download_rounded,
          color: Colors.redAccent,
          size: 20,
        ),
        SizedBox(width: 2),
        Text(
          controller.product.totalDownload.toString(),
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
