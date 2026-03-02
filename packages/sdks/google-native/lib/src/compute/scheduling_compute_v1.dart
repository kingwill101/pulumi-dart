// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_compute_v1.dart';
import 'scheduling_instance_termination_action_compute_v1.dart';
import 'scheduling_node_affinity_compute_v1.dart';
import 'scheduling_on_host_maintenance_compute_v1.dart';
import 'scheduling_provisioning_model_compute_v1.dart';

/// Sets the scheduling options for an Instance.
class SchedulingComputeV1 {
  /// Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  final pulumi.Input<bool>? automaticRestart;
  /// Specifies the termination action for the instance.
  final pulumi.Input<SchedulingInstanceTerminationActionComputeV1>? instanceTerminationAction;
  /// Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour.
  final pulumi.Input<DurationComputeV1>? localSsdRecoveryTimeout;
  /// An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String>? locationHint;
  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  final pulumi.Input<int>? minNodeCpus;
  /// A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  final pulumi.Input<List<SchedulingNodeAffinityComputeV1>>? nodeAffinities;
  /// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
  final pulumi.Input<SchedulingOnHostMaintenanceComputeV1>? onHostMaintenance;
  /// Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  final pulumi.Input<bool>? preemptible;
  /// Specifies the provisioning model of the instance.
  final pulumi.Input<SchedulingProvisioningModelComputeV1>? provisioningModel;

  /// Creates a new [SchedulingComputeV1].
  /// [automaticRestart] Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  /// [instanceTerminationAction] Specifies the termination action for the instance.
  /// [localSsdRecoveryTimeout] Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour.
  /// [locationHint] An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  /// [minNodeCpus] The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  /// [nodeAffinities] A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  /// [onHostMaintenance] Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
  /// [preemptible] Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  /// [provisioningModel] Specifies the provisioning model of the instance.
  SchedulingComputeV1({
    this.automaticRestart,
    this.instanceTerminationAction,
    this.localSsdRecoveryTimeout,
    this.locationHint,
    this.minNodeCpus,
    this.nodeAffinities,
    this.onHostMaintenance,
    this.preemptible,
    this.provisioningModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticRestart': ?automaticRestart,
      'instanceTerminationAction': ?pulumi.Input.mapOptionalInputValue<SchedulingInstanceTerminationActionComputeV1, String>(instanceTerminationAction, (value) => value.value),
      'localSsdRecoveryTimeout': ?pulumi.Input.mapOptionalInputValue<DurationComputeV1, Map<String, dynamic>>(localSsdRecoveryTimeout, (value) => value.toMap()),
      'locationHint': ?locationHint,
      'minNodeCpus': ?minNodeCpus,
      'nodeAffinities': ?pulumi.Input.mapOptionalInputValue<List<SchedulingNodeAffinityComputeV1>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<SchedulingNodeAffinityComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onHostMaintenance': ?pulumi.Input.mapOptionalInputValue<SchedulingOnHostMaintenanceComputeV1, String>(onHostMaintenance, (value) => value.value),
      'preemptible': ?preemptible,
      'provisioningModel': ?pulumi.Input.mapOptionalInputValue<SchedulingProvisioningModelComputeV1, String>(provisioningModel, (value) => value.value),
    };
  }

  factory SchedulingComputeV1.fromMap(Map<String, dynamic> map) {
    return SchedulingComputeV1(
      automaticRestart: map['automaticRestart'] == null ? null : (map['automaticRestart'] as bool).input(),
      instanceTerminationAction: map['instanceTerminationAction'] == null ? null : (SchedulingInstanceTerminationActionComputeV1.fromValue(map['instanceTerminationAction'] as String)).input(),
      localSsdRecoveryTimeout: map['localSsdRecoveryTimeout'] == null ? null : (DurationComputeV1.fromMap((map['localSsdRecoveryTimeout'] as Map).cast<String, dynamic>())).input(),
      locationHint: map['locationHint'] == null ? null : (map['locationHint'] as String).input(),
      minNodeCpus: map['minNodeCpus'] == null ? null : (map['minNodeCpus'] as int).input(),
      nodeAffinities: map['nodeAffinities'] == null ? null : (pulumi.Input.decodeList<SchedulingNodeAffinityComputeV1>(map['nodeAffinities'], (value) => SchedulingNodeAffinityComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      onHostMaintenance: map['onHostMaintenance'] == null ? null : (SchedulingOnHostMaintenanceComputeV1.fromValue(map['onHostMaintenance'] as String)).input(),
      preemptible: map['preemptible'] == null ? null : (map['preemptible'] as bool).input(),
      provisioningModel: map['provisioningModel'] == null ? null : (SchedulingProvisioningModelComputeV1.fromValue(map['provisioningModel'] as String)).input(),
    );
  }
}

