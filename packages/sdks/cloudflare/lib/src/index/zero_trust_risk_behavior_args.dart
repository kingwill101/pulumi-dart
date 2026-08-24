// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_risk_behavior_behaviors.dart';

/// {@template pulumi_index_zero_trust_risk_behavior_zero_trust_risk_behavior_args_doc}
/// The set of arguments for ZeroTrustRiskBehavior.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_risk_behavior_zero_trust_risk_behavior_args_doc}
class ZeroTrustRiskBehaviorArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<Map<String, ZeroTrustRiskBehaviorBehaviors>> behaviors;

  /// Creates a new [ZeroTrustRiskBehaviorArgs].
  /// [accountId] Required.
  /// [behaviors] Required.
  const ZeroTrustRiskBehaviorArgs({
    required this.accountId,
    required this.behaviors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'behaviors': pulumi.Input.mapInputValue<Map<String, ZeroTrustRiskBehaviorBehaviors>, Map<String, Map<String, dynamic>>>(behaviors, (value) => pulumi.Input.encodeMapValues<ZeroTrustRiskBehaviorBehaviors, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustRiskBehaviorArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustRiskBehaviorArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      behaviors: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ZeroTrustRiskBehaviorBehaviors>(map['behaviors']!, (value) => ZeroTrustRiskBehaviorBehaviors.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
