part of dashboard;

class _NewestGame extends GetView<DashboardController> {
  const _NewestGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title(),
        SizedBox(height: 10),
        ..._content(),
      ],
    );
  }

  Widget _title() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        "Newest Game",
        style: Theme.of(Get.context!).textTheme.headline6,
      ),
    );
  }

  List<Widget> _content() {
    return controller.popularGame
        .map(
          (product) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Hero(
              tag: controller.getNewestGameTag(product),
              child: CardProduct(
                data: CardProductData(
                    image: product.iconImage,
                    name: product.name,
                    category: product.category,
                    rating: product.rating),
                onPressed: () => controller.goToDetail(
                  product,
                  heroTag: controller.getNewestGameTag(product),
                ),
              ),
            ),
          ),
        )
        .toList();
  }
}
