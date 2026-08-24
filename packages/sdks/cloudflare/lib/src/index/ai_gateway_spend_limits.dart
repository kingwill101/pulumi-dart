// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_spend_limits_rule.dart';

class AiGatewaySpendLimits {
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<List<AiGatewaySpendLimitsRule>?>? rules;

  /// Creates a new [AiGatewaySpendLimits].
  /// [enabled] Optional.
  /// [rules] Optional.
  const AiGatewaySpendLimits({
    this.enabled,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<AiGatewaySpendLimitsRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AiGatewaySpendLimitsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiGatewaySpendLimits.fromMap(Map<String, dynamic> map) {
    return AiGatewaySpendLimits(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiGatewaySpendLimitsRule>(guardedValue, (value) => AiGatewaySpendLimitsRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
