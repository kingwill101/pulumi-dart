// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_gateways_result_spend_limits_rule.dart';

class GetAiGatewaysResultSpendLimits {
  final pulumi.Input<bool> enabled;
  final pulumi.Input<List<GetAiGatewaysResultSpendLimitsRule>> rules;

  /// Creates a new [GetAiGatewaysResultSpendLimits].
  /// [enabled] Required.
  /// [rules] Required.
  const GetAiGatewaysResultSpendLimits({
    required this.enabled,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rules': pulumi.Input.mapInputValue<List<GetAiGatewaysResultSpendLimitsRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetAiGatewaysResultSpendLimitsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAiGatewaysResultSpendLimits.fromMap(Map<String, dynamic> map) {
    return GetAiGatewaysResultSpendLimits(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAiGatewaysResultSpendLimitsRule>(map['rules']!, (value) => GetAiGatewaysResultSpendLimitsRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
