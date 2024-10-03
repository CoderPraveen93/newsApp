import 'package:get/get.dart';
import 'package:news_app/screens/all_page_controller.dart';

class SplaceScreenController extends GetxController {
  @override
  void onInit() {
    splaceScreen();
    super.onInit();
  }

  Future<void> splaceScreen() async {
    await Future.delayed(const Duration(seconds: 5), () {
      Get.offAll(const AllPageController());
    });
  }
}
