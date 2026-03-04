// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response_compute_v1.dart';
import 'scheduling_node_affinity_response_compute_v1.dart';

/// Sets the scheduling options for an Instance.
class SchedulingResponseComputeV1 {
  /// Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  final pulumi.Input<bool> automaticRestart;

  /// Specifies the termination action for the instance.
  final pulumi.Input<String> instanceTerminationAction;

  /// Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour.
  final pulumi.Input<DurationResponseComputeV1> localSsdRecoveryTimeout;

  /// An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String> locationHint;

  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  final pulumi.Input<int> minNodeCpus;

  /// A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  final pulumi.Input<List<SchedulingNodeAffinityResponseComputeV1>>
  nodeAffinities;

  /// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
  final pulumi.Input<String> onHostMaintenance;

  /// Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  final pulumi.Input<bool> preemptible;

  /// Specifies the provisioning model of the instance.
  final pulumi.Input<String> provisioningModel;

  /// Creates a new [SchedulingResponseComputeV1].
  /// [automaticRestart] Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  /// [instanceTerminationAction] Specifies the termination action for the instance.
  /// [localSsdRecoveryTimeout] Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour.
  /// [locationHint] An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  /// [minNodeCpus] The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  /// [nodeAffinities] A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  /// [onHostMaintenance] Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
  /// [preemptible] Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  /// [provisioningModel] Specifies the provisioning model of the instance.
  SchedulingResponseComputeV1({
    required this.automaticRestart,
    required this.instanceTerminationAction,
    required this.localSsdRecoveryTimeout,
    required this.locationHint,
    required this.minNodeCpus,
    required this.nodeAffinities,
    required this.onHostMaintenance,
    required this.preemptible,
    required this.provisioningModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticRestart': automaticRestart,
      'instanceTerminationAction': instanceTerminationAction,
      'localSsdRecoveryTimeout':
          pulumi.Input.mapInputValue<
            DurationResponseComputeV1,
            Map<String, dynamic>
          >(localSsdRecoveryTimeout, (value) => value.toMap()),
      'locationHint': locationHint,
      'minNodeCpus': minNodeCpus,
      'nodeAffinities':
          pulumi.Input.mapInputValue<
            List<SchedulingNodeAffinityResponseComputeV1>,
            List<Map<String, dynamic>>
          >(
            nodeAffinities,
            (value) =>
                pulumi.Input.encodeList<
                  SchedulingNodeAffinityResponseComputeV1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'onHostMaintenance': onHostMaintenance,
      'preemptible': preemptible,
      'provisioningModel': provisioningModel,
    };
  }

  factory SchedulingResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SchedulingResponseComputeV1(
      automaticRestart: pulumi.Input.fromValue(map['automaticRestart'] as bool),
      instanceTerminationAction: pulumi.Input.fromValue(
        map['instanceTerminationAction'] as String,
      ),
      localSsdRecoveryTimeout: pulumi.Input.fromValue(
        DurationResponseComputeV1.fromMap(
          (map['localSsdRecoveryTimeout']! as Map).cast<String, dynamic>(),
        ),
      ),
      locationHint: pulumi.Input.fromValue(map['locationHint'] as String),
      minNodeCpus: pulumi.Input.fromValue(map['minNodeCpus'] as int),
      nodeAffinities: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SchedulingNodeAffinityResponseComputeV1>(
          map['nodeAffinities']!,
          (value) => SchedulingNodeAffinityResponseComputeV1.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      onHostMaintenance: pulumi.Input.fromValue(
        map['onHostMaintenance'] as String,
      ),
      preemptible: pulumi.Input.fromValue(map['preemptible'] as bool),
      provisioningModel: pulumi.Input.fromValue(
        map['provisioningModel'] as String,
      ),
    );
  }
}
