// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstanceIndexingOptions {
  /// Tokenizer used for keyword search indexing. porter provides word-level tokenization with Porter stemming (good for natural language queries). trigram enables character-level substring matching (good for partial matches, code, identifiers). Changing this triggers a full re-index. Defaults to porter.
  /// Available values: "porter", "trigram".
  final pulumi.Input<String> keywordTokenizer;
  /// Enables OCR ingestion for PDFs and images. Changing this triggers a full re-index. Defaults to false.
  final pulumi.Input<bool> useOcr;

  /// Creates a new [GetAiSearchInstanceIndexingOptions].
  /// [keywordTokenizer] Tokenizer used for keyword search indexing. porter provides word-level tokenization with Porter stemming (good for natural language queries). trigram enables character-level substring matching (good for partial matches, code, identifiers). Changing this triggers a full re-index. Defaults to porter.
  /// [useOcr] Enables OCR ingestion for PDFs and images. Changing this triggers a full re-index. Defaults to false.
  const GetAiSearchInstanceIndexingOptions({
    required this.keywordTokenizer,
    required this.useOcr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keywordTokenizer': keywordTokenizer,
      'useOcr': useOcr,
    };
  }

  factory GetAiSearchInstanceIndexingOptions.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstanceIndexingOptions(
      keywordTokenizer: pulumi.Input.fromValue(map['keywordTokenizer'] as String),
      useOcr: pulumi.Input.fromValue(map['useOcr'] as bool),
    );
  }
}
