part of product_detail;

class _InstallButton extends StatelessWidget {
  const _InstallButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      child: ElevatedButton(onPressed: () {}, child: Text("Install")).large(),
    );
  }
}
