import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_nav/Pages/case_control.dart';

class Hal3 extends StatelessWidget {
  const Hal3({super.key});

  @override
  Widget build(BuildContext context) {
    CaseController caseController = Get.put(CaseController());
    var judulDialog = 'pesan dari halaman 2'.obs;
    void ubahTeks() {
      if (judulDialog.value == judulDialog.value.toUpperCase()) {
        judulDialog.value = judulDialog.value.toLowerCase();
      } else {
        judulDialog.value = judulDialog.value.toUpperCase();
      }
    }

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text(
          'Halaman 3 - Dialog',
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
                Get.dialog(AlertDialog(
                  title: Obx(() {
                    return Text(
                      judulDialog.value,
                      style: TextStyle(
                        color: caseController.warnaTeksSnackbar.value,
                      ),
                    );
                  }),
                  backgroundColor: caseController.bgSnackbar.value,
                  content: Obx(
                    () => Text(
                      caseController.text.value,
                      style: TextStyle(
                        color: caseController.warnaTeksSnackbar.value,
                      ),
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text('Iya',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold)),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.back();
                        Get.back();
                      },
                      child: const Text('Tidak, Kembali ke hal 2',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold)),
                    ),
                    TextButton(
                        onPressed: () {
                          caseController.ubahTeks();
                          ubahTeks();
                        },
                        child: const Text(
                          'Ubah Tipe Case',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )),
                  ],
                ));
              },
              child: const Text(
                'Tampilkan Dialog',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                caseController.ubahWarna();
                Get.snackbar('Berhasil diubah', 'Warna Dialog berhasil diubah',
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
                'Ubah Warna Dialog',
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
                    Get.back();
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
                    Get.toNamed('/hal4', arguments: 'Halo halaman 4');
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
      ),
    );
  }
}
