// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_risk_behavior_behaviors.dart';

/// Input properties used for looking up and filtering ZeroTrustRiskBehavior resources.
class ZeroTrustRiskBehaviorState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<Map<String, ZeroTrustRiskBehaviorBehaviors>?>? behaviors;

  /// Creates a new [ZeroTrustRiskBehaviorState].
  /// [accountId] Optional.
  /// [behaviors] Optional.
  const ZeroTrustRiskBehaviorState({
    this.accountId,
    this.behaviors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'behaviors': ?pulumi.Input.mapOptionalInputValue<Map<String, ZeroTrustRiskBehaviorBehaviors>, Map<String, Map<String, dynamic>>>(behaviors, (value) => pulumi.Input.encodeMapValues<ZeroTrustRiskBehaviorBehaviors, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustRiskBehaviorState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustRiskBehaviorState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      behaviors: (() { final guardedValue = map['behaviors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ZeroTrustRiskBehaviorBehaviors>(guardedValue, (value) => ZeroTrustRiskBehaviorBehaviors.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
