import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt dataPantau = 0.obs;
  void change() => dataPantau.value++;

  @override
  void onInit() {
    // TODO: implement onInit
    // ever(dataPantau, (data) => print("Perubahan"));
    // once(dataPantau, (data) => print("cuma 1x"));
    // debounce(
    //   dataPantau,
    //   (data) => print("2 detik setelah terakhir berubah"),
    //   time: Duration(seconds: 2),
    // );
    interval(
      dataPantau,
      (data) => print("setiap 2 detik dijalankan"),
      time: Duration(seconds: 2),
    );
    super.onInit();
  }
}
