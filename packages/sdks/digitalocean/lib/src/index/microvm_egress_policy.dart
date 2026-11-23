// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'microvm_egress_policy_rule.dart';

class MicrovmEgressPolicy {
  /// What to do with a destination no `rule` matches: `deny` or `allow`. Defaults to `deny`.
  final pulumi.Input<String?>? defaultAction;
  /// An allowed destination. Up to 50 rules. Rules match the host only: port, path and method are not considered, and a hostname that resolves to an IP is not matched by an `ip` rule. Each rule sets exactly one of:
  final pulumi.Input<List<MicrovmEgressPolicyRule>?>? rules;

  /// Creates a new [MicrovmEgressPolicy].
  /// [defaultAction] What to do with a destination no `rule` matches: `deny` or `allow`. Defaults to `deny`.
  /// [rules] An allowed destination. Up to 50 rules. Rules match the host only: port, path and method are not considered, and a hostname that resolves to an IP is not matched by an `ip` rule. Each rule sets exactly one of:
  const MicrovmEgressPolicy({
    this.defaultAction,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': ?defaultAction,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<MicrovmEgressPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<MicrovmEgressPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MicrovmEgressPolicy.fromMap(Map<String, dynamic> map) {
    return MicrovmEgressPolicy(
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MicrovmEgressPolicyRule>(guardedValue, (value) => MicrovmEgressPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
