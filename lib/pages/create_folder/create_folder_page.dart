part of 'imports.dart';

class CreateFolderPage extends StatelessWidget {
  const CreateFolderPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CreateFolderController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              _Input(),
              SizedBox(height: 20),
              _Button(),
            ],
          ),
        ),
      ),
    );
  }
}
