// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_machine_image_scheduling_graceful_shutdown.dart';
import 'instance_from_machine_image_scheduling_local_ssd_recovery_timeout.dart';
import 'instance_from_machine_image_scheduling_max_run_duration.dart';
import 'instance_from_machine_image_scheduling_node_affinity.dart';
import 'instance_from_machine_image_scheduling_on_instance_stop_action.dart';

class InstanceFromMachineImageScheduling {
  /// Specifies if the instance should be restarted if it was terminated by Compute Engine (not a user).
  final pulumi.Input<bool>? automaticRestart;
  /// Specifies the availability domain, which this instance should be scheduled on.
  final pulumi.Input<int>? availabilityDomain;
  /// Settings for the instance to perform a graceful shutdown.
  final pulumi.Input<InstanceFromMachineImageSchedulingGracefulShutdown>? gracefulShutdown;
  /// Specify the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  final pulumi.Input<int>? hostErrorTimeoutSeconds;
  /// Specifies the action GCE should take when SPOT VM is preempted.
  final pulumi.Input<String>? instanceTerminationAction;
  /// Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// recovery of the Local Ssd state is attempted. Its value should be in
  /// between 0 and 168 hours with hour granularity and the default value being 1
  /// hour.
  final pulumi.Input<InstanceFromMachineImageSchedulingLocalSsdRecoveryTimeout>? localSsdRecoveryTimeout;
  /// Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  final pulumi.Input<String>? maintenanceInterval;
  /// The timeout for new network connections to hosts.
  final pulumi.Input<InstanceFromMachineImageSchedulingMaxRunDuration>? maxRunDuration;
  final pulumi.Input<int>? minNodeCpus;
  /// Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems.
  final pulumi.Input<List<InstanceFromMachineImageSchedulingNodeAffinity>>? nodeAffinities;
  /// Describes maintenance behavior for the instance. One of MIGRATE or TERMINATE,
  final pulumi.Input<String>? onHostMaintenance;
  /// Defines the behaviour for instances with the instance_termination_action.
  final pulumi.Input<InstanceFromMachineImageSchedulingOnInstanceStopAction>? onInstanceStopAction;
  /// Whether the instance is preemptible.
  final pulumi.Input<bool>? preemptible;
  /// Whether the instance is spot. If this is set as SPOT.
  final pulumi.Input<String>? provisioningModel;
  /// Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  final pulumi.Input<bool>? skipGuestOsShutdown;
  /// Specifies the timestamp, when the instance will be terminated,
  /// in RFC3339 text format. If specified, the instance termination action
  /// will be performed at the termination time.
  final pulumi.Input<String>? terminationTime;

  /// Creates a new [InstanceFromMachineImageScheduling].
  /// [automaticRestart] Specifies if the instance should be restarted if it was terminated by Compute Engine (not a user).
  /// [availabilityDomain] Specifies the availability domain, which this instance should be scheduled on.
  /// [gracefulShutdown] Settings for the instance to perform a graceful shutdown.
  /// [hostErrorTimeoutSeconds] Specify the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  /// [instanceTerminationAction] Specifies the action GCE should take when SPOT VM is preempted.
  /// [localSsdRecoveryTimeout] Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  /// [maxRunDuration] The timeout for new network connections to hosts.
  /// [minNodeCpus] Optional.
  /// [nodeAffinities] Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems.
  /// [onHostMaintenance] Describes maintenance behavior for the instance. One of MIGRATE or TERMINATE,
  /// [onInstanceStopAction] Defines the behaviour for instances with the instance_termination_action.
  /// [preemptible] Whether the instance is preemptible.
  /// [provisioningModel] Whether the instance is spot. If this is set as SPOT.
  /// [skipGuestOsShutdown] Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  /// [terminationTime] Specifies the timestamp, when the instance will be terminated,
  InstanceFromMachineImageScheduling({
    this.automaticRestart,
    this.availabilityDomain,
    this.gracefulShutdown,
    this.hostErrorTimeoutSeconds,
    this.instanceTerminationAction,
    this.localSsdRecoveryTimeout,
    this.maintenanceInterval,
    this.maxRunDuration,
    this.minNodeCpus,
    this.nodeAffinities,
    this.onHostMaintenance,
    this.onInstanceStopAction,
    this.preemptible,
    this.provisioningModel,
    this.skipGuestOsShutdown,
    this.terminationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticRestart': ?automaticRestart,
      'availabilityDomain': ?availabilityDomain,
      'gracefulShutdown': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageSchedulingGracefulShutdown, Map<String, dynamic>>(gracefulShutdown, (value) => value.toMap()),
      'hostErrorTimeoutSeconds': ?hostErrorTimeoutSeconds,
      'instanceTerminationAction': ?instanceTerminationAction,
      'localSsdRecoveryTimeout': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageSchedulingLocalSsdRecoveryTimeout, Map<String, dynamic>>(localSsdRecoveryTimeout, (value) => value.toMap()),
      'maintenanceInterval': ?maintenanceInterval,
      'maxRunDuration': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageSchedulingMaxRunDuration, Map<String, dynamic>>(maxRunDuration, (value) => value.toMap()),
      'minNodeCpus': ?minNodeCpus,
      'nodeAffinities': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromMachineImageSchedulingNodeAffinity>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<InstanceFromMachineImageSchedulingNodeAffinity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onHostMaintenance': ?onHostMaintenance,
      'onInstanceStopAction': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageSchedulingOnInstanceStopAction, Map<String, dynamic>>(onInstanceStopAction, (value) => value.toMap()),
      'preemptible': ?preemptible,
      'provisioningModel': ?provisioningModel,
      'skipGuestOsShutdown': ?skipGuestOsShutdown,
      'terminationTime': ?terminationTime,
    };
  }

  factory InstanceFromMachineImageScheduling.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageScheduling(
      automaticRestart: map['automaticRestart'] == null ? null : (map['automaticRestart'] as bool).input(),
      availabilityDomain: map['availabilityDomain'] == null ? null : (map['availabilityDomain'] as int).input(),
      gracefulShutdown: map['gracefulShutdown'] == null ? null : (InstanceFromMachineImageSchedulingGracefulShutdown.fromMap((map['gracefulShutdown'] as Map).cast<String, dynamic>())).input(),
      hostErrorTimeoutSeconds: map['hostErrorTimeoutSeconds'] == null ? null : (map['hostErrorTimeoutSeconds'] as int).input(),
      instanceTerminationAction: map['instanceTerminationAction'] == null ? null : (map['instanceTerminationAction'] as String).input(),
      localSsdRecoveryTimeout: map['localSsdRecoveryTimeout'] == null ? null : (InstanceFromMachineImageSchedulingLocalSsdRecoveryTimeout.fromMap((map['localSsdRecoveryTimeout'] as Map).cast<String, dynamic>())).input(),
      maintenanceInterval: map['maintenanceInterval'] == null ? null : (map['maintenanceInterval'] as String).input(),
      maxRunDuration: map['maxRunDuration'] == null ? null : (InstanceFromMachineImageSchedulingMaxRunDuration.fromMap((map['maxRunDuration'] as Map).cast<String, dynamic>())).input(),
      minNodeCpus: map['minNodeCpus'] == null ? null : (map['minNodeCpus'] as int).input(),
      nodeAffinities: map['nodeAffinities'] == null ? null : (pulumi.Input.decodeList<InstanceFromMachineImageSchedulingNodeAffinity>(map['nodeAffinities'], (value) => InstanceFromMachineImageSchedulingNodeAffinity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      onHostMaintenance: map['onHostMaintenance'] == null ? null : (map['onHostMaintenance'] as String).input(),
      onInstanceStopAction: map['onInstanceStopAction'] == null ? null : (InstanceFromMachineImageSchedulingOnInstanceStopAction.fromMap((map['onInstanceStopAction'] as Map).cast<String, dynamic>())).input(),
      preemptible: map['preemptible'] == null ? null : (map['preemptible'] as bool).input(),
      provisioningModel: map['provisioningModel'] == null ? null : (map['provisioningModel'] as String).input(),
      skipGuestOsShutdown: map['skipGuestOsShutdown'] == null ? null : (map['skipGuestOsShutdown'] as bool).input(),
      terminationTime: map['terminationTime'] == null ? null : (map['terminationTime'] as String).input(),
    );
  }
}

