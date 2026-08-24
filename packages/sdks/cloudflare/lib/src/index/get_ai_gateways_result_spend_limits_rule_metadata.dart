// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiGatewaysResultSpendLimitsRuleMetadata {
  /// Available values: "partition", "filter".
  final pulumi.Input<String> mode;
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetAiGatewaysResultSpendLimitsRuleMetadata].
  /// [mode] Available values: "partition", "filter".
  /// [values] Required.
  const GetAiGatewaysResultSpendLimitsRuleMetadata({
    required this.mode,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'values': values,
    };
  }

  factory GetAiGatewaysResultSpendLimitsRuleMetadata.fromMap(Map<String, dynamic> map) {
    return GetAiGatewaysResultSpendLimitsRuleMetadata(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
