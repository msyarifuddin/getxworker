import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt dataPantau = 0.obs;
  void ganti() => dataPantau.value++;

  @override
  void onInit() {
    // TODO: implement onInit
    ever(dataPantau, (data) => print("Perubahan"));
    once(dataPantau, (data) => print("cuma 1x"));
    super.onInit();
  }
}
