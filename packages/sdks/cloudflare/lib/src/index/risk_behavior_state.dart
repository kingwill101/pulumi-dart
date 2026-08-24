// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'risk_behavior_behaviors.dart';

/// Input properties used for looking up and filtering RiskBehavior resources.
class RiskBehaviorState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<Map<String, RiskBehaviorBehaviors>?>? behaviors;

  /// Creates a new [RiskBehaviorState].
  /// [accountId] Optional.
  /// [behaviors] Optional.
  const RiskBehaviorState({
    this.accountId,
    this.behaviors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'behaviors': ?pulumi.Input.mapOptionalInputValue<Map<String, RiskBehaviorBehaviors>, Map<String, Map<String, dynamic>>>(behaviors, (value) => pulumi.Input.encodeMapValues<RiskBehaviorBehaviors, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RiskBehaviorState.fromMap(Map<String, dynamic> map) {
    return RiskBehaviorState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      behaviors: (() { final guardedValue = map['behaviors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<RiskBehaviorBehaviors>(guardedValue, (value) => RiskBehaviorBehaviors.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
