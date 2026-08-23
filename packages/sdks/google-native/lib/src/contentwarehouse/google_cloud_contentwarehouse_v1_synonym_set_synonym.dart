// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a list of words given by the customer All these words are synonyms of each other.
class GoogleCloudContentwarehouseV1SynonymSetSynonym {
  /// For example: sale, invoice, bill, order
  final pulumi.Input<List<String>>? words;

  /// Creates a new [GoogleCloudContentwarehouseV1SynonymSetSynonym].
  /// [words] For example: sale, invoice, bill, order
  const GoogleCloudContentwarehouseV1SynonymSetSynonym({
    this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'words': ?words,
    };
  }

  factory GoogleCloudContentwarehouseV1SynonymSetSynonym.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1SynonymSetSynonym(
      words: (() { final guardedValue = map['words']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
