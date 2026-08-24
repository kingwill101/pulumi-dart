// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_risk_behavior_get_zero_trust_risk_behavior_args_doc}
/// Arguments for getZeroTrustRiskBehavior.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_risk_behavior_get_zero_trust_risk_behavior_args_doc}
class GetZeroTrustRiskBehaviorArgs {
  final pulumi.Input<String?>? accountId;

  /// Creates a new [GetZeroTrustRiskBehaviorArgs].
  /// [accountId] Optional.
  const GetZeroTrustRiskBehaviorArgs({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory GetZeroTrustRiskBehaviorArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustRiskBehaviorArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
