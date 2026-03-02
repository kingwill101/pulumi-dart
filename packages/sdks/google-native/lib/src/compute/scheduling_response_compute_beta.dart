// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response_compute_beta.dart';
import 'scheduling_node_affinity_response_compute_beta.dart';

/// Sets the scheduling options for an Instance.
class SchedulingResponseComputeBeta {
  /// Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  final pulumi.Input<bool> automaticRestart;
  /// Specify the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  final pulumi.Input<int> hostErrorTimeoutSeconds;
  /// Specifies the termination action for the instance.
  final pulumi.Input<String> instanceTerminationAction;
  /// Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour.
  final pulumi.Input<DurationResponseComputeBeta> localSsdRecoveryTimeout;
  /// An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String> locationHint;
  /// Specifies the number of hours after VM instance creation where the VM won't be scheduled for maintenance.
  final pulumi.Input<int> maintenanceFreezeDurationHours;
  /// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  final pulumi.Input<String> maintenanceInterval;
  /// Specifies the max run duration for the given instance. If specified, the instance termination action will be performed at the end of the run duration.
  final pulumi.Input<DurationResponseComputeBeta> maxRunDuration;
  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  final pulumi.Input<int> minNodeCpus;
  /// A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  final pulumi.Input<List<SchedulingNodeAffinityResponseComputeBeta>> nodeAffinities;
  /// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
  final pulumi.Input<String> onHostMaintenance;
  /// Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  final pulumi.Input<bool> preemptible;
  /// Specifies the provisioning model of the instance.
  final pulumi.Input<String> provisioningModel;
  /// Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  final pulumi.Input<String> terminationTime;

  /// Creates a new [SchedulingResponseComputeBeta].
  /// [automaticRestart] Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  /// [hostErrorTimeoutSeconds] Specify the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  /// [instanceTerminationAction] Specifies the termination action for the instance.
  /// [localSsdRecoveryTimeout] Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour.
  /// [locationHint] An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  /// [maintenanceFreezeDurationHours] Specifies the number of hours after VM instance creation where the VM won't be scheduled for maintenance.
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  /// [maxRunDuration] Specifies the max run duration for the given instance. If specified, the instance termination action will be performed at the end of the run duration.
  /// [minNodeCpus] The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  /// [nodeAffinities] A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  /// [onHostMaintenance] Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
  /// [preemptible] Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  /// [provisioningModel] Specifies the provisioning model of the instance.
  /// [terminationTime] Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  SchedulingResponseComputeBeta({
    required this.automaticRestart,
    required this.hostErrorTimeoutSeconds,
    required this.instanceTerminationAction,
    required this.localSsdRecoveryTimeout,
    required this.locationHint,
    required this.maintenanceFreezeDurationHours,
    required this.maintenanceInterval,
    required this.maxRunDuration,
    required this.minNodeCpus,
    required this.nodeAffinities,
    required this.onHostMaintenance,
    required this.preemptible,
    required this.provisioningModel,
    required this.terminationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticRestart': automaticRestart,
      'hostErrorTimeoutSeconds': hostErrorTimeoutSeconds,
      'instanceTerminationAction': instanceTerminationAction,
      'localSsdRecoveryTimeout': pulumi.Input.mapInputValue<DurationResponseComputeBeta, Map<String, dynamic>>(localSsdRecoveryTimeout, (value) => value.toMap()),
      'locationHint': locationHint,
      'maintenanceFreezeDurationHours': maintenanceFreezeDurationHours,
      'maintenanceInterval': maintenanceInterval,
      'maxRunDuration': pulumi.Input.mapInputValue<DurationResponseComputeBeta, Map<String, dynamic>>(maxRunDuration, (value) => value.toMap()),
      'minNodeCpus': minNodeCpus,
      'nodeAffinities': pulumi.Input.mapInputValue<List<SchedulingNodeAffinityResponseComputeBeta>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<SchedulingNodeAffinityResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onHostMaintenance': onHostMaintenance,
      'preemptible': preemptible,
      'provisioningModel': provisioningModel,
      'terminationTime': terminationTime,
    };
  }

  factory SchedulingResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SchedulingResponseComputeBeta(
      automaticRestart: (map['automaticRestart'] as bool).input(),
      hostErrorTimeoutSeconds: (map['hostErrorTimeoutSeconds'] as int).input(),
      instanceTerminationAction: (map['instanceTerminationAction'] as String).input(),
      localSsdRecoveryTimeout: (DurationResponseComputeBeta.fromMap((map['localSsdRecoveryTimeout'] as Map).cast<String, dynamic>())).input(),
      locationHint: (map['locationHint'] as String).input(),
      maintenanceFreezeDurationHours: (map['maintenanceFreezeDurationHours'] as int).input(),
      maintenanceInterval: (map['maintenanceInterval'] as String).input(),
      maxRunDuration: (DurationResponseComputeBeta.fromMap((map['maxRunDuration'] as Map).cast<String, dynamic>())).input(),
      minNodeCpus: (map['minNodeCpus'] as int).input(),
      nodeAffinities: (pulumi.Input.decodeList<SchedulingNodeAffinityResponseComputeBeta>(map['nodeAffinities'], (value) => SchedulingNodeAffinityResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      onHostMaintenance: (map['onHostMaintenance'] as String).input(),
      preemptible: (map['preemptible'] as bool).input(),
      provisioningModel: (map['provisioningModel'] as String).input(),
      terminationTime: (map['terminationTime'] as String).input(),
    );
  }
}

