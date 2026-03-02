// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionStoredInfoTypeDictionaryWordList {
  /// Words or phrases defining the dictionary. The dictionary must contain at least one
  /// phrase and every phrase must contain at least 2 characters that are letters or digits.
  final pulumi.Input<List<String>> words;

  /// Creates a new [PreventionStoredInfoTypeDictionaryWordList].
  /// [words] Words or phrases defining the dictionary. The dictionary must contain at least one
  PreventionStoredInfoTypeDictionaryWordList({
    required this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'words': words,
    };
  }

  factory PreventionStoredInfoTypeDictionaryWordList.fromMap(Map<String, dynamic> map) {
    return PreventionStoredInfoTypeDictionaryWordList(
      words: ((map['words'] as List).cast<String>()).input(),
    );
  }
}

