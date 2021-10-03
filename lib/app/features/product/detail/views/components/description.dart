part of product_detail;

class _Description extends GetView<ProductDetailController> {
  const _Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: ReadMoreText(
        controller.product.description,
        trimLines: 3,
        style: Theme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(color: Colors.black54, height: 1.5),
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Read More',
        trimExpandedText: ' Less ',
      ),
    );
  }
}
