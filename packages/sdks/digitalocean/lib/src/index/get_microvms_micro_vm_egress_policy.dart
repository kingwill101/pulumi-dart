// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_microvms_micro_vm_egress_policy_rule.dart';

class GetMicrovmsMicroVmEgressPolicy {
  /// What to do with a destination no rule matches: 'deny' or 'allow'. Defaults to 'deny'.
  final pulumi.Input<String> defaultAction;
  /// An allowed destination. Set exactly one of domain or ip.
  final pulumi.Input<List<GetMicrovmsMicroVmEgressPolicyRule>?>? rules;

  /// Creates a new [GetMicrovmsMicroVmEgressPolicy].
  /// [defaultAction] What to do with a destination no rule matches: 'deny' or 'allow'. Defaults to 'deny'.
  /// [rules] An allowed destination. Set exactly one of domain or ip.
  const GetMicrovmsMicroVmEgressPolicy({
    required this.defaultAction,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': defaultAction,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<GetMicrovmsMicroVmEgressPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetMicrovmsMicroVmEgressPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetMicrovmsMicroVmEgressPolicy.fromMap(Map<String, dynamic> map) {
    return GetMicrovmsMicroVmEgressPolicy(
      defaultAction: pulumi.Input.fromValue(map['defaultAction'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetMicrovmsMicroVmEgressPolicyRule>(guardedValue, (value) => GetMicrovmsMicroVmEgressPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
