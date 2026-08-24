// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewaySpendLimitsRuleModel {
  /// Available values: "filter".
  final pulumi.Input<String> mode;
  final pulumi.Input<List<String>> values;

  /// Creates a new [AiGatewaySpendLimitsRuleModel].
  /// [mode] Available values: "filter".
  /// [values] Required.
  const AiGatewaySpendLimitsRuleModel({
    required this.mode,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'values': values,
    };
  }

  factory AiGatewaySpendLimitsRuleModel.fromMap(Map<String, dynamic> map) {
    return AiGatewaySpendLimitsRuleModel(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
