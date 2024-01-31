import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_local_database/pages/home/controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.createNote,
        backgroundColor: Color(0xFFEEDECB),
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Obx(
          () => controller.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.notes.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xFFEEE5DC),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          controller.notes[index].title,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24
                          ),
                        ),
                        subtitle: Text(controller.notes[index].content),
                        trailing: PopupMenuButton(
                          itemBuilder: (BuildContext context) => [
                            const PopupMenuItem(child: Text("Edit")),
                            PopupMenuItem(
                              child: const Text("Delete"),
                              onTap: () => controller
                                  .deleteNotes(controller.notes[index].id!),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
