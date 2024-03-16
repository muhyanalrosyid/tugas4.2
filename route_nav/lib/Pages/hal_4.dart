import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_nav/Pages/case_control.dart';

class Hal4 extends StatelessWidget {
  const Hal4({super.key});

  @override
  Widget build(BuildContext context) {
    CaseController caseController = Get.put(CaseController());
    var judulBottomSheets = 'pesan dari halaman 3'.obs;
    void ubahTeks() {
      if (judulBottomSheets.value == judulBottomSheets.value.toUpperCase()) {
        judulBottomSheets.value = judulBottomSheets.value.toLowerCase();
      } else {
        judulBottomSheets.value = judulBottomSheets.value.toUpperCase();
      }
    }

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text(
          'Halaman 4 - Bottom Sheets',
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
                Get.bottomSheet(
                  Container(
                    height: 150,
                    color: caseController.bgSnackbar.value,
                    child: Column(
                      children: [
                        Obx(() {
                          return ListTile(
                            title: Text(
                              judulBottomSheets.value,
                              style: TextStyle(
                                color: caseController.warnaTeksSnackbar.value,
                              ),
                            ),
                            subtitle: Text(
                              caseController.text.value,
                              style: TextStyle(
                                color: caseController.warnaTeksSnackbar.value,
                              ),
                            ),
                          );
                        }),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                Get.back();
                              },
                              child: const Text(
                                'Tutup',
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
                                caseController.ubahTeks();
                                ubahTeks();
                              },
                              child: const Text(
                                'Ubah Tipe Case',
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
              },
              child: const Text(
                'Tampilkan Bottom Sheet',
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
                    'Berhasil diubah', 'Warna Bottom Sheets berhasil diubah',
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
                'Ubah Warna Bottom Sheets',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
                    Get.offAllNamed('/hal1');
                  },
                  child: const Text(
                    'Kembali ke awal',
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
