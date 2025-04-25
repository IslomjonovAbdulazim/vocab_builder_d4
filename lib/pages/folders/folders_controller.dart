part of 'imports.dart';

class FoldersController extends GetxController {
  RxList<FolderModel> folders = <FolderModel>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    load();
    super.onInit();
  }

  void load() async {
    isLoading.value = true;
    folders.value = await NetworkService.getAllFolders();
    isLoading.value = false;
  }

  void delete(FolderModel folder) async {
    isLoading.value = true;
    folders.remove(folder);
    await NetworkService.deleteFolder(folder);
    isLoading.value = false;
  }
}









