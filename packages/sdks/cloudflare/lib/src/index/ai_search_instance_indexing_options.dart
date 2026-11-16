// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSearchInstanceIndexingOptions {
  /// Tokenizer used for keyword search indexing. porter provides word-level tokenization with Porter stemming (good for natural language queries). trigram enables character-level substring matching (good for partial matches, code, identifiers). Changing this triggers a full re-index. Defaults to porter.
  /// Available values: "porter", "trigram".
  final pulumi.Input<String?>? keywordTokenizer;
  /// Enables OCR ingestion for PDFs and images. Changing this triggers a full re-index. Defaults to false.
  final pulumi.Input<bool?>? useOcr;

  /// Creates a new [AiSearchInstanceIndexingOptions].
  /// [keywordTokenizer] Tokenizer used for keyword search indexing. porter provides word-level tokenization with Porter stemming (good for natural language queries). trigram enables character-level substring matching (good for partial matches, code, identifiers). Changing this triggers a full re-index. Defaults to porter.
  /// [useOcr] Enables OCR ingestion for PDFs and images. Changing this triggers a full re-index. Defaults to false.
  const AiSearchInstanceIndexingOptions({
    this.keywordTokenizer,
    this.useOcr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keywordTokenizer': ?keywordTokenizer,
      'useOcr': ?useOcr,
    };
  }

  factory AiSearchInstanceIndexingOptions.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceIndexingOptions(
      keywordTokenizer: (() { final guardedValue = map['keywordTokenizer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useOcr: (() { final guardedValue = map['useOcr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
