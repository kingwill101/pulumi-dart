// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_scheduling_graceful_shutdown.dart';
import 'get_instance_scheduling_local_ssd_recovery_timeout.dart';
import 'get_instance_scheduling_max_run_duration.dart';
import 'get_instance_scheduling_node_affinity.dart';
import 'get_instance_scheduling_on_instance_stop_action.dart';

class GetInstanceScheduling {
  /// Specifies if the instance should be
  /// restarted if it was terminated by Compute Engine (not a user).
  final pulumi.Input<bool> automaticRestart;
  /// Specifies the availability domain, which this instance should be scheduled on.
  final pulumi.Input<int> availabilityDomain;
  /// Settings for the instance to perform a graceful shutdown.
  final pulumi.Input<List<GetInstanceSchedulingGracefulShutdown>> gracefulShutdowns;
  /// Beta Time in seconds for host error detection.
  final pulumi.Input<int> hostErrorTimeoutSeconds;
  /// Describe the type of termination action for `SPOT` VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  final pulumi.Input<String> instanceTerminationAction;
  /// Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// recovery of the Local Ssd state is attempted. Its value should be in
  /// between 0 and 168 hours with hour granularity and the default value being 1
  /// hour.
  final pulumi.Input<List<GetInstanceSchedulingLocalSsdRecoveryTimeout>> localSsdRecoveryTimeouts;
  /// Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  final pulumi.Input<String> maintenanceInterval;
  /// The timeout for new network connections to hosts.
  final pulumi.Input<List<GetInstanceSchedulingMaxRunDuration>> maxRunDurations;
  final pulumi.Input<int> minNodeCpus;
  /// Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems.
  final pulumi.Input<List<GetInstanceSchedulingNodeAffinity>> nodeAffinities;
  /// Describes maintenance behavior for the
  /// instance. One of `MIGRATE` or `TERMINATE`, for more info, read
  /// [here](https://cloud.google.com/compute/docs/instances/setting-instance-scheduling-options)
  final pulumi.Input<String> onHostMaintenance;
  /// Defines the behaviour for instances with the instance_termination_action.
  final pulumi.Input<List<GetInstanceSchedulingOnInstanceStopAction>> onInstanceStopActions;
  /// Whether the instance is preemptible.
  final pulumi.Input<bool> preemptible;
  /// Describe the type of preemptible VM.
  final pulumi.Input<String> provisioningModel;
  /// Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  final pulumi.Input<bool> skipGuestOsShutdown;
  /// Specifies the timestamp, when the instance will be terminated,
  /// in RFC3339 text format. If specified, the instance termination action
  /// will be performed at the termination time.
  final pulumi.Input<String> terminationTime;

  /// Creates a new [GetInstanceScheduling].
  /// [automaticRestart] Specifies if the instance should be
  /// [availabilityDomain] Specifies the availability domain, which this instance should be scheduled on.
  /// [gracefulShutdowns] Settings for the instance to perform a graceful shutdown.
  /// [hostErrorTimeoutSeconds] Beta Time in seconds for host error detection.
  /// [instanceTerminationAction] Describe the type of termination action for `SPOT` VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  /// [localSsdRecoveryTimeouts] Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  /// [maxRunDurations] The timeout for new network connections to hosts.
  /// [minNodeCpus] Required.
  /// [nodeAffinities] Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems.
  /// [onHostMaintenance] Describes maintenance behavior for the
  /// [onInstanceStopActions] Defines the behaviour for instances with the instance_termination_action.
  /// [preemptible] Whether the instance is preemptible.
  /// [provisioningModel] Describe the type of preemptible VM.
  /// [skipGuestOsShutdown] Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  /// [terminationTime] Specifies the timestamp, when the instance will be terminated,
  GetInstanceScheduling({
    required this.automaticRestart,
    required this.availabilityDomain,
    required this.gracefulShutdowns,
    required this.hostErrorTimeoutSeconds,
    required this.instanceTerminationAction,
    required this.localSsdRecoveryTimeouts,
    required this.maintenanceInterval,
    required this.maxRunDurations,
    required this.minNodeCpus,
    required this.nodeAffinities,
    required this.onHostMaintenance,
    required this.onInstanceStopActions,
    required this.preemptible,
    required this.provisioningModel,
    required this.skipGuestOsShutdown,
    required this.terminationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticRestart': automaticRestart,
      'availabilityDomain': availabilityDomain,
      'gracefulShutdowns': pulumi.Input.mapInputValue<List<GetInstanceSchedulingGracefulShutdown>, List<Map<String, dynamic>>>(gracefulShutdowns, (value) => pulumi.Input.encodeList<GetInstanceSchedulingGracefulShutdown, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostErrorTimeoutSeconds': hostErrorTimeoutSeconds,
      'instanceTerminationAction': instanceTerminationAction,
      'localSsdRecoveryTimeouts': pulumi.Input.mapInputValue<List<GetInstanceSchedulingLocalSsdRecoveryTimeout>, List<Map<String, dynamic>>>(localSsdRecoveryTimeouts, (value) => pulumi.Input.encodeList<GetInstanceSchedulingLocalSsdRecoveryTimeout, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceInterval': maintenanceInterval,
      'maxRunDurations': pulumi.Input.mapInputValue<List<GetInstanceSchedulingMaxRunDuration>, List<Map<String, dynamic>>>(maxRunDurations, (value) => pulumi.Input.encodeList<GetInstanceSchedulingMaxRunDuration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minNodeCpus': minNodeCpus,
      'nodeAffinities': pulumi.Input.mapInputValue<List<GetInstanceSchedulingNodeAffinity>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<GetInstanceSchedulingNodeAffinity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onHostMaintenance': onHostMaintenance,
      'onInstanceStopActions': pulumi.Input.mapInputValue<List<GetInstanceSchedulingOnInstanceStopAction>, List<Map<String, dynamic>>>(onInstanceStopActions, (value) => pulumi.Input.encodeList<GetInstanceSchedulingOnInstanceStopAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preemptible': preemptible,
      'provisioningModel': provisioningModel,
      'skipGuestOsShutdown': skipGuestOsShutdown,
      'terminationTime': terminationTime,
    };
  }

  factory GetInstanceScheduling.fromMap(Map<String, dynamic> map) {
    return GetInstanceScheduling(
      automaticRestart: pulumi.Input.fromValue(map['automaticRestart'] as bool),
      availabilityDomain: pulumi.Input.fromValue(map['availabilityDomain'] as int),
      gracefulShutdowns: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceSchedulingGracefulShutdown>(map['gracefulShutdowns']!, (value) => GetInstanceSchedulingGracefulShutdown.fromMap((value as Map).cast<String, dynamic>()))),
      hostErrorTimeoutSeconds: pulumi.Input.fromValue(map['hostErrorTimeoutSeconds'] as int),
      instanceTerminationAction: pulumi.Input.fromValue(map['instanceTerminationAction'] as String),
      localSsdRecoveryTimeouts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceSchedulingLocalSsdRecoveryTimeout>(map['localSsdRecoveryTimeouts']!, (value) => GetInstanceSchedulingLocalSsdRecoveryTimeout.fromMap((value as Map).cast<String, dynamic>()))),
      maintenanceInterval: pulumi.Input.fromValue(map['maintenanceInterval'] as String),
      maxRunDurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceSchedulingMaxRunDuration>(map['maxRunDurations']!, (value) => GetInstanceSchedulingMaxRunDuration.fromMap((value as Map).cast<String, dynamic>()))),
      minNodeCpus: pulumi.Input.fromValue(map['minNodeCpus'] as int),
      nodeAffinities: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceSchedulingNodeAffinity>(map['nodeAffinities']!, (value) => GetInstanceSchedulingNodeAffinity.fromMap((value as Map).cast<String, dynamic>()))),
      onHostMaintenance: pulumi.Input.fromValue(map['onHostMaintenance'] as String),
      onInstanceStopActions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceSchedulingOnInstanceStopAction>(map['onInstanceStopActions']!, (value) => GetInstanceSchedulingOnInstanceStopAction.fromMap((value as Map).cast<String, dynamic>()))),
      preemptible: pulumi.Input.fromValue(map['preemptible'] as bool),
      provisioningModel: pulumi.Input.fromValue(map['provisioningModel'] as String),
      skipGuestOsShutdown: pulumi.Input.fromValue(map['skipGuestOsShutdown'] as bool),
      terminationTime: pulumi.Input.fromValue(map['terminationTime'] as String),
    );
  }
}

