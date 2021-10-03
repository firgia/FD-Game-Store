part of intro;

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: SvgPicture.asset(
            ImageVector.backgroundLiquid,
            width: Get.width * .7,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            ImageRaster.phone3d,
            width: Get.width * .8,
          ),
        ),
      ],
    );
  }
}
