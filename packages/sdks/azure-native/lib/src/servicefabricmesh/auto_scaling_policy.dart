// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'add_remove_replica_scaling_mechanism.dart';
import 'average_load_scaling_trigger.dart';

/// Describes the auto scaling policy
class AutoScalingPolicy {
  /// The mechanism that is used to scale when auto scaling operation is invoked.
  final pulumi.Input<AddRemoveReplicaScalingMechanism> mechanism;
  /// The name of the auto scaling policy.
  final pulumi.Input<String> name;
  /// Determines when auto scaling operation will be invoked.
  final pulumi.Input<AverageLoadScalingTrigger> trigger;

  /// Creates a new [AutoScalingPolicy].
  /// [mechanism] The mechanism that is used to scale when auto scaling operation is invoked.
  /// [name] The name of the auto scaling policy.
  /// [trigger] Determines when auto scaling operation will be invoked.
  AutoScalingPolicy({
    required this.mechanism,
    required this.name,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mechanism': pulumi.Input.mapInputValue<AddRemoveReplicaScalingMechanism, Map<String, dynamic>>(mechanism, (value) => value.toMap()),
      'name': name,
      'trigger': pulumi.Input.mapInputValue<AverageLoadScalingTrigger, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory AutoScalingPolicy.fromMap(Map<String, dynamic> map) {
    return AutoScalingPolicy(
      mechanism: pulumi.Input.fromValue(AddRemoveReplicaScalingMechanism.fromMap((map['mechanism']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      trigger: pulumi.Input.fromValue(AverageLoadScalingTrigger.fromMap((map['trigger']! as Map).cast<String, dynamic>())),
    );
  }
}

