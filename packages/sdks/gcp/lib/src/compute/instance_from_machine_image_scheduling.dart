// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_machine_image_scheduling_graceful_shutdown.dart';
import 'instance_from_machine_image_scheduling_local_ssd_recovery_timeout.dart';
import 'instance_from_machine_image_scheduling_max_run_duration.dart';
import 'instance_from_machine_image_scheduling_node_affinity.dart';
import 'instance_from_machine_image_scheduling_on_instance_stop_action.dart';

class InstanceFromMachineImageScheduling {
  /// Specifies if the instance should be restarted if it was terminated by Compute Engine (not a user).
  final bool? automaticRestart;
  /// Specifies the availability domain, which this instance should be scheduled on.
  final int? availabilityDomain;
  /// Settings for the instance to perform a graceful shutdown.
  final InstanceFromMachineImageSchedulingGracefulShutdown? gracefulShutdown;
  /// Specify the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  final int? hostErrorTimeoutSeconds;
  /// Specifies the action GCE should take when SPOT VM is preempted.
  final String? instanceTerminationAction;
  /// Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// recovery of the Local Ssd state is attempted. Its value should be in
  /// between 0 and 168 hours with hour granularity and the default value being 1
  /// hour.
  final InstanceFromMachineImageSchedulingLocalSsdRecoveryTimeout? localSsdRecoveryTimeout;
  /// Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  final String? maintenanceInterval;
  /// The timeout for new network connections to hosts.
  final InstanceFromMachineImageSchedulingMaxRunDuration? maxRunDuration;
  final int? minNodeCpus;
  /// Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems.
  final List<InstanceFromMachineImageSchedulingNodeAffinity>? nodeAffinities;
  /// Describes maintenance behavior for the instance. One of MIGRATE or TERMINATE,
  final String? onHostMaintenance;
  /// Defines the behaviour for instances with the instance_termination_action.
  final InstanceFromMachineImageSchedulingOnInstanceStopAction? onInstanceStopAction;
  /// Whether the instance is preemptible.
  final bool? preemptible;
  /// Whether the instance is spot. If this is set as SPOT.
  final String? provisioningModel;
  /// Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  final bool? skipGuestOsShutdown;
  /// Specifies the timestamp, when the instance will be terminated,
  /// in RFC3339 text format. If specified, the instance termination action
  /// will be performed at the termination time.
  final String? terminationTime;

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
      'gracefulShutdown': ?gracefulShutdown == null ? null : gracefulShutdown!.toMap(),
      'hostErrorTimeoutSeconds': ?hostErrorTimeoutSeconds,
      'instanceTerminationAction': ?instanceTerminationAction,
      'localSsdRecoveryTimeout': ?localSsdRecoveryTimeout == null ? null : localSsdRecoveryTimeout!.toMap(),
      'maintenanceInterval': ?maintenanceInterval,
      'maxRunDuration': ?maxRunDuration == null ? null : maxRunDuration!.toMap(),
      'minNodeCpus': ?minNodeCpus,
      'nodeAffinities': ?nodeAffinities == null ? null : pulumi.Input.encodeList<InstanceFromMachineImageSchedulingNodeAffinity, Map<String, dynamic>>(nodeAffinities!, (value) => value.toMap()),
      'onHostMaintenance': ?onHostMaintenance,
      'onInstanceStopAction': ?onInstanceStopAction == null ? null : onInstanceStopAction!.toMap(),
      'preemptible': ?preemptible,
      'provisioningModel': ?provisioningModel,
      'skipGuestOsShutdown': ?skipGuestOsShutdown,
      'terminationTime': ?terminationTime,
    };
  }

  factory InstanceFromMachineImageScheduling.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageScheduling(
      automaticRestart: map['automaticRestart'] == null ? null : map['automaticRestart'] as bool,
      availabilityDomain: map['availabilityDomain'] == null ? null : map['availabilityDomain'] as int,
      gracefulShutdown: map['gracefulShutdown'] == null ? null : InstanceFromMachineImageSchedulingGracefulShutdown.fromMap((map['gracefulShutdown'] as Map).cast<String, dynamic>()),
      hostErrorTimeoutSeconds: map['hostErrorTimeoutSeconds'] == null ? null : map['hostErrorTimeoutSeconds'] as int,
      instanceTerminationAction: map['instanceTerminationAction'] == null ? null : map['instanceTerminationAction'] as String,
      localSsdRecoveryTimeout: map['localSsdRecoveryTimeout'] == null ? null : InstanceFromMachineImageSchedulingLocalSsdRecoveryTimeout.fromMap((map['localSsdRecoveryTimeout'] as Map).cast<String, dynamic>()),
      maintenanceInterval: map['maintenanceInterval'] == null ? null : map['maintenanceInterval'] as String,
      maxRunDuration: map['maxRunDuration'] == null ? null : InstanceFromMachineImageSchedulingMaxRunDuration.fromMap((map['maxRunDuration'] as Map).cast<String, dynamic>()),
      minNodeCpus: map['minNodeCpus'] == null ? null : map['minNodeCpus'] as int,
      nodeAffinities: map['nodeAffinities'] == null ? null : pulumi.Input.decodeList<InstanceFromMachineImageSchedulingNodeAffinity>(map['nodeAffinities'], (value) => InstanceFromMachineImageSchedulingNodeAffinity.fromMap((value as Map).cast<String, dynamic>())),
      onHostMaintenance: map['onHostMaintenance'] == null ? null : map['onHostMaintenance'] as String,
      onInstanceStopAction: map['onInstanceStopAction'] == null ? null : InstanceFromMachineImageSchedulingOnInstanceStopAction.fromMap((map['onInstanceStopAction'] as Map).cast<String, dynamic>()),
      preemptible: map['preemptible'] == null ? null : map['preemptible'] as bool,
      provisioningModel: map['provisioningModel'] == null ? null : map['provisioningModel'] as String,
      skipGuestOsShutdown: map['skipGuestOsShutdown'] == null ? null : map['skipGuestOsShutdown'] as bool,
      terminationTime: map['terminationTime'] == null ? null : map['terminationTime'] as String,
    );
  }
}

