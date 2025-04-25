part of 'imports.dart';

class FoldersPage extends StatelessWidget {
  const FoldersPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FoldersController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Folders"),
        leading: CupertinoButton(
          onPressed: () {
            if (theme.value == ThemeMode.dark) {
              theme.value = ThemeMode.light;
            } else {
              theme.value = ThemeMode.dark;
            }
          },
          child: Icon(
            theme.value == ThemeMode.dark ? Icons.dark_mode : Icons.light_mode,
          ),
        ),
        actions: [
          CupertinoButton(
            onPressed: () async {
              await Get.to(CreateFolderPage());
              Get.find<FoldersController>().load();
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: _Folders(),
        ),
      ),
    );
  }
}
