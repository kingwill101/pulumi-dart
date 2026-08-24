// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewaySpendLimitsRuleAiGatewayProvider {
  /// Available values: "filter".
  final pulumi.Input<String> mode;
  final pulumi.Input<List<String>> values;

  /// Creates a new [AiGatewaySpendLimitsRuleAiGatewayProvider].
  /// [mode] Available values: "filter".
  /// [values] Required.
  const AiGatewaySpendLimitsRuleAiGatewayProvider({
    required this.mode,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'values': values,
    };
  }

  factory AiGatewaySpendLimitsRuleAiGatewayProvider.fromMap(Map<String, dynamic> map) {
    return AiGatewaySpendLimitsRuleAiGatewayProvider(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
