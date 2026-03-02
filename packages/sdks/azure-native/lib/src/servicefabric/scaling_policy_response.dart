// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'add_remove_incremental_named_partition_scaling_mechanism_response.dart';
import 'average_partition_load_scaling_trigger_response.dart';

/// Specifies a metric to load balance a service during runtime.
class ScalingPolicyResponse {
  /// Specifies the mechanism associated with this scaling policy
  final pulumi.Input<AddRemoveIncrementalNamedPartitionScalingMechanismResponse> scalingMechanism;
  /// Specifies the trigger associated with this scaling policy.
  final pulumi.Input<AveragePartitionLoadScalingTriggerResponse> scalingTrigger;

  /// Creates a new [ScalingPolicyResponse].
  /// [scalingMechanism] Specifies the mechanism associated with this scaling policy
  /// [scalingTrigger] Specifies the trigger associated with this scaling policy.
  ScalingPolicyResponse({
    required this.scalingMechanism,
    required this.scalingTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scalingMechanism': pulumi.Input.mapInputValue<AddRemoveIncrementalNamedPartitionScalingMechanismResponse, Map<String, dynamic>>(scalingMechanism, (value) => value.toMap()),
      'scalingTrigger': pulumi.Input.mapInputValue<AveragePartitionLoadScalingTriggerResponse, Map<String, dynamic>>(scalingTrigger, (value) => value.toMap()),
    };
  }

  factory ScalingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ScalingPolicyResponse(
      scalingMechanism: (AddRemoveIncrementalNamedPartitionScalingMechanismResponse.fromMap((map['scalingMechanism'] as Map).cast<String, dynamic>())).input(),
      scalingTrigger: (AveragePartitionLoadScalingTriggerResponse.fromMap((map['scalingTrigger'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

