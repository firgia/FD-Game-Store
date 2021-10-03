part of intro;

class _GetStartedButton extends GetView<IntroController> {
  const _GetStartedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.pink[300],
      ),
      onPressed: () => controller.goToDashboard(),
      child: Text("Get Started"),
    ).large();
  }
}
