import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:latihan_local_database/pages/create/controller.dart';

class CreatePage extends GetView<CreatePageController> {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEEE5DC),
                ),
                onPressed: () => Get.back(),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xFF212121),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                controller: controller.titleController,
                decoration: InputDecoration(
                  labelText: "Title",
                  filled: true,
                  fillColor: const Color(0xFFEEE5DC),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                controller: controller.contentController,
                decoration: InputDecoration(
                  labelText: "Content",
                  filled: true,
                  fillColor: const Color(0xFFEEE5DC),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              width: MediaQuery.sizeOf(context).width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEEE5DC),
                ),
                onPressed: controller.onSubmit,
                child: const Text(
                  "SUBMIT",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF212121)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
