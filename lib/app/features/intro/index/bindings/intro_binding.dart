part of intro;

class IntroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroController());
  }
}
