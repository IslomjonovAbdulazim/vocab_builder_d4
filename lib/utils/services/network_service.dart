import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vocab_builder_d4/models/folder_model.dart';

class NetworkService {
  static const baseUrl = "https://680b7b8bd5075a76d98b4882.mockapi.io";

  static Future<List<FolderModel>> getAllFolders() async {
    final uri = Uri.parse("$baseUrl/folders");
    List<FolderModel> result = [];
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      List jsonList = List.from(jsonDecode(response.body));
      result = jsonList.map((json) => FolderModel.fromJson(json)).toList();
    }

    return result;
  }

  static Future<void> createFolder(FolderModel folder) async {
    final uri = Uri.parse("$baseUrl/folders");
    await http.post(
      uri,
      body: jsonEncode(folder.toJson()),
      headers: {
        "Content-Type": "application/json",
      },
    );
  }

  static Future<void> deleteFolder(FolderModel folder) async {
    final uri = Uri.parse("$baseUrl/folders/${folder.id}");
    await http.delete(uri);
  }

  static Future<void> updateFolder(FolderModel folder) async {
    final uri = Uri.parse("$baseUrl/folders/${folder.id}");
    await http.put(
      uri,
      body: jsonEncode(folder.toJson()),
      headers: {
        "Content-Type": "application/json",
      },
    );
  }
}
