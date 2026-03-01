// ignore_for_file: unused_element, unnecessary_cast


class PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryWordList {
  /// Words or phrases defining the dictionary. The dictionary must contain at least one
  /// phrase and every phrase must contain at least 2 characters that are letters or digits.
  final List<String> words;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryWordList].
  /// [words] Words or phrases defining the dictionary. The dictionary must contain at least one
  PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryWordList({
    required this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'words': words,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryWordList.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryWordList(
      words: (map['words'] as List).cast<String>(),
    );
  }
}

