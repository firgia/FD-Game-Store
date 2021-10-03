part of dashboard;

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 250,
      color: Theme.of(context).primaryColor,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _image(offset: Offset(-Get.width * .35, -Get.width * .25), angle: -5),
          _image(offset: Offset(Get.width * .35, Get.width * .25), angle: 4),
        ],
      ),
    );
  }

  Widget _image({required Offset offset, required double angle}) {
    return Transform.translate(
      offset: offset,
      child: Transform.rotate(
        angle: angle,
        child: SvgPicture.asset(
          ImageVector.backgroundLiquid,
          width: Get.width * .55,
        ),
      ),
    );
  }
}
