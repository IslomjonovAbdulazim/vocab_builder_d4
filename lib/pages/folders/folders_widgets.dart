part of 'imports.dart';

class _Folders extends GetView<FoldersController> {
  const _Folders({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return controller.isLoading.value
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: controller.folders.length,
              itemBuilder: (context, index) {
                final model = controller.folders[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: ListTile(
                    title: Text(model.name),
                    subtitle: Text(model.createdAt.toString()),
                  ),
                );
              },
            );
    });
  }
}
