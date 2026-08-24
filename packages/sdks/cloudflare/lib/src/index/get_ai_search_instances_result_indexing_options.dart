// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstancesResultIndexingOptions {
  /// Tokenizer used for keyword search indexing. porter provides word-level tokenization with Porter stemming (good for natural language queries). trigram enables character-level substring matching (good for partial matches, code, identifiers). Changing this triggers a full re-index. Defaults to porter.
  /// Available values: "porter", "trigram".
  final pulumi.Input<String> keywordTokenizer;

  /// Creates a new [GetAiSearchInstancesResultIndexingOptions].
  /// [keywordTokenizer] Tokenizer used for keyword search indexing. porter provides word-level tokenization with Porter stemming (good for natural language queries). trigram enables character-level substring matching (good for partial matches, code, identifiers). Changing this triggers a full re-index. Defaults to porter.
  const GetAiSearchInstancesResultIndexingOptions({
    required this.keywordTokenizer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keywordTokenizer': keywordTokenizer,
    };
  }

  factory GetAiSearchInstancesResultIndexingOptions.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultIndexingOptions(
      keywordTokenizer: pulumi.Input.fromValue(map['keywordTokenizer'] as String),
    );
  }
}
