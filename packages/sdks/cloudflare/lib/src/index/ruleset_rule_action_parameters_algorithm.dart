// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersAlgorithm {
  /// Name of the compression algorithm to enable.
  /// Available values: "none", "auto", "default", "gzip", "brotli", "zstd".
  final pulumi.Input<String?>? name;

  /// Creates a new [RulesetRuleActionParametersAlgorithm].
  /// [name] Name of the compression algorithm to enable.
  const RulesetRuleActionParametersAlgorithm({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory RulesetRuleActionParametersAlgorithm.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersAlgorithm(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
