class VocabModel {
  // members
  late String id;
  late String word;
  late String meaning;

  // constructor
  VocabModel({
    required this.id,
    required this.word,
    required this.meaning,
  });

  // fromJson
  VocabModel.fromJson(Map json) {
    id = json["id"];
    word = json["word"];
    meaning = json["meaning"];
  }

  // toJson
  Map toJson() => {
    "id": id,
    "word": word,
    "meaning": meaning,
  };
}
