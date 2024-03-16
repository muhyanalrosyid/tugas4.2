import 'package:flutter/material.dart'
    show
        AppBar,
        BorderRadius,
        BuildContext,
        ButtonStyle,
        Center,
        Colors,
        Column,
        ElevatedButton,
        FontWeight,
        MainAxisAlignment,
        MaterialStateProperty,
        RoundedRectangleBorder,
        Row,
        Scaffold,
        SizedBox,
        StatelessWidget,
        Text,
        TextButton,
        TextStyle,
        Widget;
import 'package:get/get.dart';
import 'package:route_nav/Pages/case_control.dart';

class Hal2 extends StatelessWidget {
  const Hal2({super.key});

  @override
  Widget build(BuildContext context) {
    CaseController caseController = Get.put(CaseController());
    return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Text(
            'Halaman 2 - Snackbar',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  caseController.text.value = Get.arguments;
                  Get.snackbar(
                    'Pesan dari Halaman 1',
                    'Pesan',
                    messageText: Obx(
                      () => Text(
                        caseController.text.value,
                        style: TextStyle(
                          color: caseController.warnaTeksSnackbar.value,
                        ),
                      ),
                    ),
                    colorText: caseController.warnaTeksSnackbar.value,
                    backgroundColor: caseController.bgSnackbar.value,
                    mainButton: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      onPressed: () {
                        caseController.ubahTeks();
                      },
                      child: const Text(
                        'Ubah tipe case',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Tampilkan Snackbar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  caseController.ubahWarna();
                  Get.snackbar(
                      'Berhasil diubah', 'Warna Snackbar berhasil diubah',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: caseController.bgSnackbar.value,
                      colorText: caseController.warnaTeksSnackbar.value);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Ubah Warna Snackbar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Get.back(result: 'Halo kembali dari halaman 2');
                    },
                    child: const Text(
                      'Kembali',
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
                    onPressed: () {
                      Get.toNamed('/hal3',
                          arguments: 'Halo halaman 3, mau tetap di hal 3 ?');
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
            ],
          ),
        ));
  }
}
