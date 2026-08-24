// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewaySpendLimitsRuleMetadata {
  /// Available values: "partition", "filter".
  final pulumi.Input<String> mode;
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [AiGatewaySpendLimitsRuleMetadata].
  /// [mode] Available values: "partition", "filter".
  /// [values] Optional.
  const AiGatewaySpendLimitsRuleMetadata({
    required this.mode,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'values': ?values,
    };
  }

  factory AiGatewaySpendLimitsRuleMetadata.fromMap(Map<String, dynamic> map) {
    return AiGatewaySpendLimitsRuleMetadata(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
