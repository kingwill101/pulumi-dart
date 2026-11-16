// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstancesResultIndexingOptions {
  /// Available values: "porter", "trigram".
  final pulumi.Input<String> keywordTokenizer;
  final pulumi.Input<bool> useOcr;

  /// Creates a new [GetAiSearchInstancesResultIndexingOptions].
  /// [keywordTokenizer] Available values: "porter", "trigram".
  /// [useOcr] Required.
  const GetAiSearchInstancesResultIndexingOptions({
    required this.keywordTokenizer,
    required this.useOcr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keywordTokenizer': keywordTokenizer,
      'useOcr': useOcr,
    };
  }

  factory GetAiSearchInstancesResultIndexingOptions.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultIndexingOptions(
      keywordTokenizer: pulumi.Input.fromValue(map['keywordTokenizer'] as String),
      useOcr: pulumi.Input.fromValue(map['useOcr'] as bool),
    );
  }
}
