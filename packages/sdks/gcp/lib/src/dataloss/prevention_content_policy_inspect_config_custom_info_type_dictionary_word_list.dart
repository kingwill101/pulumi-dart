// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryWordList {
  /// Words or phrases defining the dictionary. The dictionary must contain at least one
  /// phrase and every phrase must contain at least 2 characters that are letters or digits.
  final pulumi.Input<List<String>> words;

  /// Creates a new [PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryWordList].
  /// [words] Words or phrases defining the dictionary. The dictionary must contain at least one
  const PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryWordList({
    required this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'words': words,
    };
  }

  factory PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryWordList.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryWordList(
      words: pulumi.Input.fromValue((map['words'] as List).cast<String>()),
    );
  }
}
