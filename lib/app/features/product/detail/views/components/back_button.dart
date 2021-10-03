part of product_detail;

class _BackButton extends StatelessWidget {
  const _BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white30,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Icon(Icons.arrow_back_ios_rounded),
          ),
          onTap: () => Get.back(),
        ),
      ),
    );
  }
}
