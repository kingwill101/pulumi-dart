// ignore_for_file: unused_element, unnecessary_cast

import 'add_remove_replica_scaling_mechanism_response.dart';
import 'average_load_scaling_trigger_response.dart';

/// Describes the auto scaling policy
class AutoScalingPolicyResponse {
  /// The mechanism that is used to scale when auto scaling operation is invoked.
  final AddRemoveReplicaScalingMechanismResponse mechanism;
  /// The name of the auto scaling policy.
  final String name;
  /// Determines when auto scaling operation will be invoked.
  final AverageLoadScalingTriggerResponse trigger;

  /// Creates a new [AutoScalingPolicyResponse].
  /// [mechanism] The mechanism that is used to scale when auto scaling operation is invoked.
  /// [name] The name of the auto scaling policy.
  /// [trigger] Determines when auto scaling operation will be invoked.
  AutoScalingPolicyResponse({
    required this.mechanism,
    required this.name,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mechanism': mechanism.toMap(),
      'name': name,
      'trigger': trigger.toMap(),
    };
  }

  factory AutoScalingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return AutoScalingPolicyResponse(
      mechanism: AddRemoveReplicaScalingMechanismResponse.fromMap((map['mechanism'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      trigger: AverageLoadScalingTriggerResponse.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

