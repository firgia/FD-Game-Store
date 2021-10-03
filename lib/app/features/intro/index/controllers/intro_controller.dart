part of intro;

class IntroController extends GetxController {
  void goToDashboard() {
    Get.offNamed(Routes.dashboard);
  }
}
