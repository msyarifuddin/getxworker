import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Worker GetX")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "Terjadi perubahan ${homeC.dataPantau} kali",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Data",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) => homeC.change(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
