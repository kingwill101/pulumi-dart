// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_risk_behavior_behaviors.dart';

/// Result data returned by getZeroTrustRiskBehavior.
class GetZeroTrustRiskBehaviorResult {
  final String? accountId;
  final Map<String, GetZeroTrustRiskBehaviorBehaviors>? behaviors;

  /// Creates a new [GetZeroTrustRiskBehaviorResult].
  /// [accountId] Optional.
  /// [behaviors] Optional.
  const GetZeroTrustRiskBehaviorResult({
    this.accountId,
    this.behaviors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'behaviors': ?(() { final guardedValue = behaviors; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<GetZeroTrustRiskBehaviorBehaviors, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustRiskBehaviorResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustRiskBehaviorResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      behaviors: (() { final guardedValue = map['behaviors']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<GetZeroTrustRiskBehaviorBehaviors>(guardedValue, (value) => GetZeroTrustRiskBehaviorBehaviors.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
