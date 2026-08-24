// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'risk_behavior_behaviors.dart';

/// {@template pulumi_index_risk_behavior_risk_behavior_args_doc}
/// The set of arguments for RiskBehavior.
/// {@endtemplate}
/// {@macro pulumi_index_risk_behavior_risk_behavior_args_doc}
class RiskBehaviorArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<Map<String, RiskBehaviorBehaviors>> behaviors;

  /// Creates a new [RiskBehaviorArgs].
  /// [accountId] Required.
  /// [behaviors] Required.
  const RiskBehaviorArgs({
    required this.accountId,
    required this.behaviors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'behaviors': pulumi.Input.mapInputValue<Map<String, RiskBehaviorBehaviors>, Map<String, Map<String, dynamic>>>(behaviors, (value) => pulumi.Input.encodeMapValues<RiskBehaviorBehaviors, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RiskBehaviorArgs.fromMap(Map<String, dynamic> map) {
    return RiskBehaviorArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      behaviors: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<RiskBehaviorBehaviors>(map['behaviors']!, (value) => RiskBehaviorBehaviors.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
