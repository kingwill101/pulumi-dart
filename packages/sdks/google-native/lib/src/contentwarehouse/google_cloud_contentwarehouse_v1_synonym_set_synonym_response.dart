// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a list of words given by the customer All these words are synonyms of each other.
class GoogleCloudContentwarehouseV1SynonymSetSynonymResponse {
  /// For example: sale, invoice, bill, order
  final pulumi.Input<List<String>> words;

  /// Creates a new [GoogleCloudContentwarehouseV1SynonymSetSynonymResponse].
  /// [words] For example: sale, invoice, bill, order
  GoogleCloudContentwarehouseV1SynonymSetSynonymResponse({required this.words});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'words': words};
  }

  factory GoogleCloudContentwarehouseV1SynonymSetSynonymResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1SynonymSetSynonymResponse(
      words: pulumi.Input.fromValue((map['words'] as List).cast<String>()),
    );
  }
}
