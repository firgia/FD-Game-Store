part of dashboard;

class _Header extends GetView<DashboardController> {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _title(),
              _imageProfile(),
            ],
          ),
          _subtitle(),
        ],
      ),
    );
  }

  Widget _title() {
    return Text(
      "Welcome, " + GetUtils.capitalize(controller.user.name)!,
      style: Theme.of(Get.context!).textTheme.headline5?.copyWith(
            color: Colors.white,
          ),
    );
  }

  Widget _subtitle() {
    return Text(
      "What would you like to play ? ",
      style: TextStyle(
        fontSize: 15,
        color: Colors.grey[200],
      ),
    );
  }

  Widget _imageProfile() {
    return CircleAvatar(
      backgroundImage: controller.user.image,
    );
  }
}
