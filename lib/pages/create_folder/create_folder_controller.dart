part of 'imports.dart';

class CreateFolderController extends GetxController {
  TextEditingController folderController = TextEditingController();
  RxBool isLoading = false.obs;

  void create() async {
    String name = folderController.text.trim();
    if (name.isEmpty) return;
    isLoading.value = true;
    final folder = FolderModel(
      id: "",
      name: name,
      createdAt: DateTime.now(),
    );
    await NetworkService.createFolder(folder);
    isLoading.value = false;
    Get.back();
  }
}
