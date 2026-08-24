// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersAlgorithm {
  /// Name of the compression algorithm to enable.
  /// Available values: "none", "auto", "default", "gzip", "brotli", "zstd".
  final pulumi.Input<String> name;

  /// Creates a new [GetRulesetRuleActionParametersAlgorithm].
  /// [name] Name of the compression algorithm to enable.
  const GetRulesetRuleActionParametersAlgorithm({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetRulesetRuleActionParametersAlgorithm.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersAlgorithm(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
