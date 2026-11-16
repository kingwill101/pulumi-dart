// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_microvm_egress_policy_rule.dart';

class GetMicrovmEgressPolicy {
  /// What happens to a destination no rule matches: `deny` or `allow`.
  final pulumi.Input<String> defaultAction;
  /// The allowed destinations. Each has a `domain` or an `ip`.
  final pulumi.Input<List<GetMicrovmEgressPolicyRule>?>? rules;

  /// Creates a new [GetMicrovmEgressPolicy].
  /// [defaultAction] What happens to a destination no rule matches: `deny` or `allow`.
  /// [rules] The allowed destinations. Each has a `domain` or an `ip`.
  const GetMicrovmEgressPolicy({
    required this.defaultAction,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': defaultAction,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<GetMicrovmEgressPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetMicrovmEgressPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetMicrovmEgressPolicy.fromMap(Map<String, dynamic> map) {
    return GetMicrovmEgressPolicy(
      defaultAction: pulumi.Input.fromValue(map['defaultAction'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetMicrovmEgressPolicyRule>(guardedValue, (value) => GetMicrovmEgressPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
