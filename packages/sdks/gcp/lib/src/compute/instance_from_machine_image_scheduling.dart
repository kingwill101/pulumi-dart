// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_machine_image_scheduling_graceful_shutdown.dart';
import 'instance_from_machine_image_scheduling_local_ssd_recovery_timeout.dart';
import 'instance_from_machine_image_scheduling_max_run_duration.dart';
import 'instance_from_machine_image_scheduling_node_affinity.dart';
import 'instance_from_machine_image_scheduling_on_instance_stop_action.dart';
import 'instance_from_machine_image_scheduling_preemption_notice_duration.dart';

class InstanceFromMachineImageScheduling {
  /// Specifies if the instance should be restarted if it was terminated by Compute Engine (not a user).
  final pulumi.Input<bool?>? automaticRestart;
  /// Specifies the availability domain, which this instance should be scheduled on.
  final pulumi.Input<int?>? availabilityDomain;
  /// Settings for the instance to perform a graceful shutdown.
  final pulumi.Input<InstanceFromMachineImageSchedulingGracefulShutdown?>? gracefulShutdown;
  /// Specify the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  final pulumi.Input<int?>? hostErrorTimeoutSeconds;
  /// Specifies the action GCE should take when SPOT VM is preempted.
  final pulumi.Input<String?>? instanceTerminationAction;
  /// Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// recovery of the Local Ssd state is attempted. Its value should be in
  /// between 0 and 168 hours with hour granularity and the default value being 1
  /// hour.
  final pulumi.Input<InstanceFromMachineImageSchedulingLocalSsdRecoveryTimeout?>? localSsdRecoveryTimeout;
  /// Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  final pulumi.Input<String?>? maintenanceInterval;
  /// The timeout for new network connections to hosts.
  final pulumi.Input<InstanceFromMachineImageSchedulingMaxRunDuration?>? maxRunDuration;
  final pulumi.Input<int?>? minNodeCpus;
  /// Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems.
  final pulumi.Input<List<InstanceFromMachineImageSchedulingNodeAffinity>?>? nodeAffinities;
  /// Describes maintenance behavior for the instance. One of MIGRATE or TERMINATE,
  final pulumi.Input<String?>? onHostMaintenance;
  /// Defines the behaviour for instances with the instance_termination_action.
  final pulumi.Input<InstanceFromMachineImageSchedulingOnInstanceStopAction?>? onInstanceStopAction;
  /// Whether the instance is preemptible.
  final pulumi.Input<bool?>? preemptible;
  /// The duration of the notice that the instance will receive before it is preempted.
  final pulumi.Input<InstanceFromMachineImageSchedulingPreemptionNoticeDuration?>? preemptionNoticeDuration;
  /// Describes the desired provisioning model for the instance. Possible values are STANDARD, SPOT, FLEX_START, and RESERVATION_BOUND. For STANDARD, resources are provisioned immediately. For SPOT, resources are offered at a discount compared to standard pricing but may be preempted. For FLEX_START, resources are offered at a discount with flexible start times. For RESERVATION_BOUND, the instance is bound to a specific reservation and will only consume capacity from that reservation.
  final pulumi.Input<String?>? provisioningModel;
  /// Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  final pulumi.Input<bool?>? skipGuestOsShutdown;
  /// Specifies the timestamp, when the instance will be terminated,
  /// in RFC3339 text format. If specified, the instance termination action
  /// will be performed at the termination time.
  final pulumi.Input<String?>? terminationTime;

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
  /// [preemptionNoticeDuration] The duration of the notice that the instance will receive before it is preempted.
  /// [provisioningModel] Describes the desired provisioning model for the instance. Possible values are STANDARD, SPOT, FLEX_START, and RESERVATION_BOUND. For STANDARD, resources are provisioned immediately. For SPOT, resources are offered at a discount compared to standard pricing but may be preempted. For FLEX_START, resources are offered at a discount with flexible start times. For RESERVATION_BOUND, the instance is bound to a specific reservation and will only consume capacity from that reservation.
  /// [skipGuestOsShutdown] Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  /// [terminationTime] Specifies the timestamp, when the instance will be terminated,
  const InstanceFromMachineImageScheduling({
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
    this.preemptionNoticeDuration,
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
      'preemptionNoticeDuration': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageSchedulingPreemptionNoticeDuration, Map<String, dynamic>>(preemptionNoticeDuration, (value) => value.toMap()),
      'provisioningModel': ?provisioningModel,
      'skipGuestOsShutdown': ?skipGuestOsShutdown,
      'terminationTime': ?terminationTime,
    };
  }

  factory InstanceFromMachineImageScheduling.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageScheduling(
      automaticRestart: (() { final guardedValue = map['automaticRestart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityDomain: (() { final guardedValue = map['availabilityDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      gracefulShutdown: (() { final guardedValue = map['gracefulShutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromMachineImageSchedulingGracefulShutdown.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostErrorTimeoutSeconds: (() { final guardedValue = map['hostErrorTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      instanceTerminationAction: (() { final guardedValue = map['instanceTerminationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localSsdRecoveryTimeout: (() { final guardedValue = map['localSsdRecoveryTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromMachineImageSchedulingLocalSsdRecoveryTimeout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceInterval: (() { final guardedValue = map['maintenanceInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxRunDuration: (() { final guardedValue = map['maxRunDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromMachineImageSchedulingMaxRunDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minNodeCpus: (() { final guardedValue = map['minNodeCpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      nodeAffinities: (() { final guardedValue = map['nodeAffinities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceFromMachineImageSchedulingNodeAffinity>(guardedValue, (value) => InstanceFromMachineImageSchedulingNodeAffinity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      onHostMaintenance: (() { final guardedValue = map['onHostMaintenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onInstanceStopAction: (() { final guardedValue = map['onInstanceStopAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromMachineImageSchedulingOnInstanceStopAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preemptible: (() { final guardedValue = map['preemptible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      preemptionNoticeDuration: (() { final guardedValue = map['preemptionNoticeDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromMachineImageSchedulingPreemptionNoticeDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningModel: (() { final guardedValue = map['provisioningModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipGuestOsShutdown: (() { final guardedValue = map['skipGuestOsShutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      terminationTime: (() { final guardedValue = map['terminationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
