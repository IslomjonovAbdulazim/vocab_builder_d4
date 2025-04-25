part of 'imports.dart';

class _Input extends GetView<CreateFolderController> {
  const _Input({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.folderController,
      decoration: InputDecoration(
        hintText: "Folder Name",
      ),
    );
  }
}

class _Button extends GetView<CreateFolderController> {
  const _Button();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return controller.isLoading.value
            ? CircularProgressIndicator()
            : CupertinoButton(
                onPressed: () {
                  controller.create();
                },
                child: Text("Save"),
              );
      },
    );
  }
}
