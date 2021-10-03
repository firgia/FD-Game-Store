part of dashboard;

class _PopularGame extends GetView<DashboardController> {
  const _PopularGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title(),
        SizedBox(height: 10),
        _content(),
      ],
    );
  }

  Widget _title() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        "Popular Game",
        style: Theme.of(Get.context!).textTheme.headline6,
      ),
    );
  }

  Widget _content() {
    return SizedBox(
      height: CardImage.size.height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: controller.popularGame.length,
        itemBuilder: (context, index) {
          var product = controller.popularGame[index];

          return Hero(
            tag: controller.getPopularGameTag(product),
            child: CardImage(
              image: product.backgroundImage,
              onPressed: () => controller.goToDetail(
                product,
                heroTag: controller.getPopularGameTag(product),
              ),
            ),
          );
        },
      ),
    );
  }
}
