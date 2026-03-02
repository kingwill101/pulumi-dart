// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration.dart';
import 'scheduling_graceful_shutdown.dart';
import 'scheduling_instance_termination_action.dart';
import 'scheduling_maintenance_interval.dart';
import 'scheduling_node_affinity.dart';
import 'scheduling_on_host_maintenance.dart';
import 'scheduling_provisioning_model.dart';

/// Sets the scheduling options for an Instance.
class Scheduling {
  /// Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  final pulumi.Input<bool>? automaticRestart;
  /// Specifies the availability domain (AD), which this instance should be scheduled on. The AD belongs to the spread GroupPlacementPolicy resource policy that has been assigned to the instance. Specify a value between 1-max count of availability domains in your GroupPlacementPolicy. See go/placement-policy-extension for more details.
  final pulumi.Input<int>? availabilityDomain;
  /// Current number of vCPUs available for VM. 0 or unset means default vCPUs of the current machine type.
  final pulumi.Input<int>? currentCpus;
  /// Current amount of memory (in MB) available for VM. 0 or unset means default amount of memory of the current machine type.
  final pulumi.Input<String>? currentMemoryMb;
  final pulumi.Input<SchedulingGracefulShutdown>? gracefulShutdown;
  /// Specify the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  final pulumi.Input<int>? hostErrorTimeoutSeconds;
  /// Specifies the termination action for the instance.
  final pulumi.Input<SchedulingInstanceTerminationAction>? instanceTerminationAction;
  /// Defines whether the instance is tolerant of higher cpu latency. This can only be set during instance creation, or when the instance is not currently running. It must not be set if the preemptible option is also set.
  final pulumi.Input<bool>? latencyTolerant;
  /// Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour.
  final pulumi.Input<Duration>? localSsdRecoveryTimeout;
  /// An opaque location hint used to place the instance close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String>? locationHint;
  /// Specifies the number of hours after VM instance creation where the VM won't be scheduled for maintenance.
  final pulumi.Input<int>? maintenanceFreezeDurationHours;
  /// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  final pulumi.Input<SchedulingMaintenanceInterval>? maintenanceInterval;
  /// Specifies the max run duration for the given instance. If specified, the instance termination action will be performed at the end of the run duration.
  final pulumi.Input<Duration>? maxRunDuration;
  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  final pulumi.Input<int>? minNodeCpus;
  /// A set of node affinity and anti-affinity configurations. Refer to Configuring node affinity for more information. Overrides reservationAffinity.
  final pulumi.Input<List<SchedulingNodeAffinity>>? nodeAffinities;
  /// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
  final pulumi.Input<SchedulingOnHostMaintenance>? onHostMaintenance;
  /// Defines whether the instance is preemptible. This can only be set during instance creation or while the instance is stopped and therefore, in a `TERMINATED` state. See Instance Life Cycle for more information on the possible instance states.
  final pulumi.Input<bool>? preemptible;
  /// Specifies the provisioning model of the instance.
  final pulumi.Input<SchedulingProvisioningModel>? provisioningModel;
  /// Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  final pulumi.Input<String>? terminationTime;

  /// Creates a new [Scheduling].
  /// [automaticRestart] Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted. By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine.
  /// [availabilityDomain] Specifies the availability domain (AD), which this instance should be scheduled on. The AD belongs to the spread GroupPlacementPolicy resource policy that has been assigned to the instance. Specify a value between 1-max count of availability domains in your GroupPlacementPolicy. See go/placement-policy-extension for more details.
  /// [currentCpus] Current number of vCPUs available for VM. 0 or unset means default vCPUs of the current machine type.
  /// [currentMemoryMb] Current amount of memory (in MB) available for VM. 0 or unset means default amount of memory of the current machine type.
  /// [gracefulShutdown] Optional.
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
  Scheduling({
    this.automaticRestart,
    this.availabilityDomain,
    this.currentCpus,
    this.currentMemoryMb,
    this.gracefulShutdown,
    this.hostErrorTimeoutSeconds,
    this.instanceTerminationAction,
    this.latencyTolerant,
    this.localSsdRecoveryTimeout,
    this.locationHint,
    this.maintenanceFreezeDurationHours,
    this.maintenanceInterval,
    this.maxRunDuration,
    this.minNodeCpus,
    this.nodeAffinities,
    this.onHostMaintenance,
    this.preemptible,
    this.provisioningModel,
    this.terminationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticRestart': ?automaticRestart,
      'availabilityDomain': ?availabilityDomain,
      'currentCpus': ?currentCpus,
      'currentMemoryMb': ?currentMemoryMb,
      'gracefulShutdown': ?pulumi.Input.mapOptionalInputValue<SchedulingGracefulShutdown, Map<String, dynamic>>(gracefulShutdown, (value) => value.toMap()),
      'hostErrorTimeoutSeconds': ?hostErrorTimeoutSeconds,
      'instanceTerminationAction': ?pulumi.Input.mapOptionalInputValue<SchedulingInstanceTerminationAction, String>(instanceTerminationAction, (value) => value.value),
      'latencyTolerant': ?latencyTolerant,
      'localSsdRecoveryTimeout': ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(localSsdRecoveryTimeout, (value) => value.toMap()),
      'locationHint': ?locationHint,
      'maintenanceFreezeDurationHours': ?maintenanceFreezeDurationHours,
      'maintenanceInterval': ?pulumi.Input.mapOptionalInputValue<SchedulingMaintenanceInterval, String>(maintenanceInterval, (value) => value.value),
      'maxRunDuration': ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(maxRunDuration, (value) => value.toMap()),
      'minNodeCpus': ?minNodeCpus,
      'nodeAffinities': ?pulumi.Input.mapOptionalInputValue<List<SchedulingNodeAffinity>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<SchedulingNodeAffinity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onHostMaintenance': ?pulumi.Input.mapOptionalInputValue<SchedulingOnHostMaintenance, String>(onHostMaintenance, (value) => value.value),
      'preemptible': ?preemptible,
      'provisioningModel': ?pulumi.Input.mapOptionalInputValue<SchedulingProvisioningModel, String>(provisioningModel, (value) => value.value),
      'terminationTime': ?terminationTime,
    };
  }

  factory Scheduling.fromMap(Map<String, dynamic> map) {
    return Scheduling(
      automaticRestart: map['automaticRestart'] == null ? null : (map['automaticRestart'] as bool).input(),
      availabilityDomain: map['availabilityDomain'] == null ? null : (map['availabilityDomain'] as int).input(),
      currentCpus: map['currentCpus'] == null ? null : (map['currentCpus'] as int).input(),
      currentMemoryMb: map['currentMemoryMb'] == null ? null : (map['currentMemoryMb'] as String).input(),
      gracefulShutdown: map['gracefulShutdown'] == null ? null : (SchedulingGracefulShutdown.fromMap((map['gracefulShutdown'] as Map).cast<String, dynamic>())).input(),
      hostErrorTimeoutSeconds: map['hostErrorTimeoutSeconds'] == null ? null : (map['hostErrorTimeoutSeconds'] as int).input(),
      instanceTerminationAction: map['instanceTerminationAction'] == null ? null : (SchedulingInstanceTerminationAction.fromValue(map['instanceTerminationAction'] as String)).input(),
      latencyTolerant: map['latencyTolerant'] == null ? null : (map['latencyTolerant'] as bool).input(),
      localSsdRecoveryTimeout: map['localSsdRecoveryTimeout'] == null ? null : (Duration.fromMap((map['localSsdRecoveryTimeout'] as Map).cast<String, dynamic>())).input(),
      locationHint: map['locationHint'] == null ? null : (map['locationHint'] as String).input(),
      maintenanceFreezeDurationHours: map['maintenanceFreezeDurationHours'] == null ? null : (map['maintenanceFreezeDurationHours'] as int).input(),
      maintenanceInterval: map['maintenanceInterval'] == null ? null : (SchedulingMaintenanceInterval.fromValue(map['maintenanceInterval'] as String)).input(),
      maxRunDuration: map['maxRunDuration'] == null ? null : (Duration.fromMap((map['maxRunDuration'] as Map).cast<String, dynamic>())).input(),
      minNodeCpus: map['minNodeCpus'] == null ? null : (map['minNodeCpus'] as int).input(),
      nodeAffinities: map['nodeAffinities'] == null ? null : (pulumi.Input.decodeList<SchedulingNodeAffinity>(map['nodeAffinities'], (value) => SchedulingNodeAffinity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      onHostMaintenance: map['onHostMaintenance'] == null ? null : (SchedulingOnHostMaintenance.fromValue(map['onHostMaintenance'] as String)).input(),
      preemptible: map['preemptible'] == null ? null : (map['preemptible'] as bool).input(),
      provisioningModel: map['provisioningModel'] == null ? null : (SchedulingProvisioningModel.fromValue(map['provisioningModel'] as String)).input(),
      terminationTime: map['terminationTime'] == null ? null : (map['terminationTime'] as String).input(),
    );
  }
}

