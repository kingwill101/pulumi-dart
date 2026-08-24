// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_device_posture_rule_get_zero_trust_device_posture_rule_args_doc}
/// Arguments for getZeroTrustDevicePostureRule.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_device_posture_rule_get_zero_trust_device_posture_rule_args_doc}
class GetZeroTrustDevicePostureRuleArgs {
  final pulumi.Input<String?>? accountId;
  /// API UUID.
  final pulumi.Input<String> ruleId;

  /// Creates a new [GetZeroTrustDevicePostureRuleArgs].
  /// [accountId] Optional.
  /// [ruleId] API UUID.
  const GetZeroTrustDevicePostureRuleArgs({
    this.accountId,
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'ruleId': ruleId,
    };
  }

  factory GetZeroTrustDevicePostureRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDevicePostureRuleArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
    );
  }
}
