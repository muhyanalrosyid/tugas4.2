import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_nav/Pages/case_control.dart';

class Hal1 extends StatelessWidget {
  const Hal1({super.key});

  @override
  Widget build(BuildContext context) {
    CaseController caseController = Get.put(CaseController());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text(
          'Halaman 1',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.offAllNamed('/');
            },
            icon: const Icon(Icons.home_filled),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                caseController.text.value,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                caseController.ubahTeks();
              },
              child: const Text(
                'Ubah Tipe Case',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () async {
                caseController.text.value =
                    await Get.toNamed('/hal2', arguments: 'Halo halaman 2');
              },
              child: const Text(
                'Selanjutnya',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
