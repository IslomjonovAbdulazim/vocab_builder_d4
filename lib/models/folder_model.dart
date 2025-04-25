class FolderModel {
  // members
  late String id;
  late String name;
  late DateTime createdAt;

  // constructor
  FolderModel({
    required this.id,
    required this.name,
    required this.createdAt,
  });

  // fromJson
  FolderModel.fromJson(Map json) {
    id = json["id"];
    name = json["name"];
    createdAt = DateTime.parse(json["createdAt"]);
  }

  // toJson
  Map toJson() => {
    "id": id,
    "name": name,
    "createdAt": createdAt.toIso8601String(),
  };
}






