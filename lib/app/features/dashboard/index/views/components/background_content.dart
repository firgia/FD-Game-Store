part of dashboard;

class _BackgroundContent extends StatelessWidget {
  const _BackgroundContent({required this.child, Key? key}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: child,
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
  }
}
