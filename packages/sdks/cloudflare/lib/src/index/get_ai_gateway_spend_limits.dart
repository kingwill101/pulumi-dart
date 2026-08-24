// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_gateway_spend_limits_rule.dart';

class GetAiGatewaySpendLimits {
  final pulumi.Input<bool> enabled;
  final pulumi.Input<List<GetAiGatewaySpendLimitsRule>> rules;

  /// Creates a new [GetAiGatewaySpendLimits].
  /// [enabled] Required.
  /// [rules] Required.
  const GetAiGatewaySpendLimits({
    required this.enabled,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rules': pulumi.Input.mapInputValue<List<GetAiGatewaySpendLimitsRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetAiGatewaySpendLimitsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAiGatewaySpendLimits.fromMap(Map<String, dynamic> map) {
    return GetAiGatewaySpendLimits(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAiGatewaySpendLimitsRule>(map['rules']!, (value) => GetAiGatewaySpendLimitsRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
