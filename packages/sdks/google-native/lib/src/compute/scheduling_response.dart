// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response.dart';
import 'scheduling_graceful_shutdown_response.dart';
import 'scheduling_node_affinity_response.dart';

/// Sets the scheduling options for an Instance.
class SchedulingResponse {
  /// Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  final pulumi.Input<bool> automaticRestart;
  /// Specifies the availability domain (AD), which this instance should be scheduled on. The AD belongs to the spread GroupPlacementPolicy resource policy that has been assigned to the instance. Specify a value between 1-max count of availability domains in your GroupPlacementPolicy. See go/placement-policy-extension for more details.
  final pulumi.Input<int> availabilityDomain;
  /// Current number of vCPUs available for VM. 0 or unset means default vCPUs of the current machine type.
  final pulumi.Input<int> currentCpus;
  /// Current amount of memory (in MB) available for VM. 0 or unset means default amount of memory of the current machine type.
  final pulumi.Input<String> currentMemoryMb;
  final pulumi.Input<SchedulingGracefulShutdownResponse> gracefulShutdown;
  /// Specify the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  final pulumi.Input<int> hostErrorTimeoutSeconds;
  /// Specifies the termination action for the instance.
  final pulumi.Input<String> instanceTerminationAction;
  /// Defines whether the instance is tolerant of higher cpu latency. This can only be set during instance creation, or when the instance is not currently running. It must not be set if the preemptible option is also set.
  final pulumi.Input<bool> latencyTolerant;
  /// Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour.
  final pulumi.Input<DurationResponse> localSsdRecoveryTimeout;
  /// An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String> locationHint;
  /// Specifies the number of hours after VM instance creation where the VM won't be scheduled for maintenance.
  final pulumi.Input<int> maintenanceFreezeDurationHours;
  /// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  final pulumi.Input<String> maintenanceInterval;
  /// Specifies the max run duration for the given instance. If specified, the instance termination action will be performed at the end of the run duration.
  final pulumi.Input<DurationResponse> maxRunDuration;
  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  final pulumi.Input<int> minNodeCpus;
  /// A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  final pulumi.Input<List<SchedulingNodeAffinityResponse>> nodeAffinities;
  /// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
  final pulumi.Input<String> onHostMaintenance;
  /// Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  final pulumi.Input<bool> preemptible;
  /// Specifies the provisioning model of the instance.
  final pulumi.Input<String> provisioningModel;
  /// Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  final pulumi.Input<String> terminationTime;

  /// Creates a new [SchedulingResponse].
  /// [automaticRestart] Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  /// [availabilityDomain] Specifies the availability domain (AD), which this instance should be scheduled on. The AD belongs to the spread GroupPlacementPolicy resource policy that has been assigned to the instance. Specify a value between 1-max count of availability domains in your GroupPlacementPolicy. See go/placement-policy-extension for more details.
  /// [currentCpus] Current number of vCPUs available for VM. 0 or unset means default vCPUs of the current machine type.
  /// [currentMemoryMb] Current amount of memory (in MB) available for VM. 0 or unset means default amount of memory of the current machine type.
  /// [gracefulShutdown] Required.
  /// [hostErrorTimeoutSeconds] Specify the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  /// [instanceTerminationAction] Specifies the termination action for the instance.
  /// [latencyTolerant] Defines whether the instance is tolerant of higher cpu latency. This can only be set during instance creation, or when the instance is not currently running. It must not be set if the preemptible option is also set.
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
  SchedulingResponse({
    required this.automaticRestart,
    required this.availabilityDomain,
    required this.currentCpus,
    required this.currentMemoryMb,
    required this.gracefulShutdown,
    required this.hostErrorTimeoutSeconds,
    required this.instanceTerminationAction,
    required this.latencyTolerant,
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
      'availabilityDomain': availabilityDomain,
      'currentCpus': currentCpus,
      'currentMemoryMb': currentMemoryMb,
      'gracefulShutdown': pulumi.Input.mapInputValue<SchedulingGracefulShutdownResponse, Map<String, dynamic>>(gracefulShutdown, (value) => value.toMap()),
      'hostErrorTimeoutSeconds': hostErrorTimeoutSeconds,
      'instanceTerminationAction': instanceTerminationAction,
      'latencyTolerant': latencyTolerant,
      'localSsdRecoveryTimeout': pulumi.Input.mapInputValue<DurationResponse, Map<String, dynamic>>(localSsdRecoveryTimeout, (value) => value.toMap()),
      'locationHint': locationHint,
      'maintenanceFreezeDurationHours': maintenanceFreezeDurationHours,
      'maintenanceInterval': maintenanceInterval,
      'maxRunDuration': pulumi.Input.mapInputValue<DurationResponse, Map<String, dynamic>>(maxRunDuration, (value) => value.toMap()),
      'minNodeCpus': minNodeCpus,
      'nodeAffinities': pulumi.Input.mapInputValue<List<SchedulingNodeAffinityResponse>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<SchedulingNodeAffinityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onHostMaintenance': onHostMaintenance,
      'preemptible': preemptible,
      'provisioningModel': provisioningModel,
      'terminationTime': terminationTime,
    };
  }

  factory SchedulingResponse.fromMap(Map<String, dynamic> map) {
    return SchedulingResponse(
      automaticRestart: (map['automaticRestart'] as bool).input(),
      availabilityDomain: (map['availabilityDomain'] as int).input(),
      currentCpus: (map['currentCpus'] as int).input(),
      currentMemoryMb: (map['currentMemoryMb'] as String).input(),
      gracefulShutdown: (SchedulingGracefulShutdownResponse.fromMap((map['gracefulShutdown'] as Map).cast<String, dynamic>())).input(),
      hostErrorTimeoutSeconds: (map['hostErrorTimeoutSeconds'] as int).input(),
      instanceTerminationAction: (map['instanceTerminationAction'] as String).input(),
      latencyTolerant: (map['latencyTolerant'] as bool).input(),
      localSsdRecoveryTimeout: (DurationResponse.fromMap((map['localSsdRecoveryTimeout'] as Map).cast<String, dynamic>())).input(),
      locationHint: (map['locationHint'] as String).input(),
      maintenanceFreezeDurationHours: (map['maintenanceFreezeDurationHours'] as int).input(),
      maintenanceInterval: (map['maintenanceInterval'] as String).input(),
      maxRunDuration: (DurationResponse.fromMap((map['maxRunDuration'] as Map).cast<String, dynamic>())).input(),
      minNodeCpus: (map['minNodeCpus'] as int).input(),
      nodeAffinities: (pulumi.Input.decodeList<SchedulingNodeAffinityResponse>(map['nodeAffinities'], (value) => SchedulingNodeAffinityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      onHostMaintenance: (map['onHostMaintenance'] as String).input(),
      preemptible: (map['preemptible'] as bool).input(),
      provisioningModel: (map['provisioningModel'] as String).input(),
      terminationTime: (map['terminationTime'] as String).input(),
    );
  }
}

