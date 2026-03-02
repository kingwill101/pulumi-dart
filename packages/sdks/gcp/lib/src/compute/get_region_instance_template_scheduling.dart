// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_template_scheduling_graceful_shutdown.dart';
import 'get_region_instance_template_scheduling_local_ssd_recovery_timeout.dart';
import 'get_region_instance_template_scheduling_max_run_duration.dart';
import 'get_region_instance_template_scheduling_node_affinity.dart';
import 'get_region_instance_template_scheduling_on_instance_stop_action.dart';

class GetRegionInstanceTemplateScheduling {
  /// Specifies whether the instance should be
  /// automatically restarted if it is terminated by Compute Engine (not
  /// terminated by a user). This defaults to true.
  final pulumi.Input<bool> automaticRestart;
  /// Specifies the availability domain, which this instance should be scheduled on.
  final pulumi.Input<int> availabilityDomain;
  /// Settings for the instance to perform a graceful shutdown.
  final pulumi.Input<List<GetRegionInstanceTemplateSchedulingGracefulShutdown>> gracefulShutdowns;
  /// Beta Time in seconds for host error detection.
  final pulumi.Input<int> hostErrorTimeoutSeconds;
  /// Describe the type of termination action for `SPOT` VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  final pulumi.Input<String> instanceTerminationAction;
  /// Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// recovery of the Local Ssd state is attempted. Its value should be in
  /// between 0 and 168 hours with hour granularity and the default value being 1
  /// hour.
  final pulumi.Input<List<GetRegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout>> localSsdRecoveryTimeouts;
  /// Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  final pulumi.Input<String> maintenanceInterval;
  /// The timeout for new network connections to hosts.
  final pulumi.Input<List<GetRegionInstanceTemplateSchedulingMaxRunDuration>> maxRunDurations;
  /// Minimum number of cpus for the instance.
  final pulumi.Input<int> minNodeCpus;
  /// Specifies node affinities or anti-affinities
  /// to determine which sole-tenant nodes your instances and managed instance
  /// groups will use as host systems. Read more on sole-tenant node creation
  /// [here](https://cloud.google.com/compute/docs/nodes/create-nodes).
  /// Structure documented below.
  final pulumi.Input<List<GetRegionInstanceTemplateSchedulingNodeAffinity>> nodeAffinities;
  /// Defines the maintenance behavior for this
  /// instance.
  final pulumi.Input<String> onHostMaintenance;
  /// Defines the behaviour for instances with the instance_termination_action.
  final pulumi.Input<List<GetRegionInstanceTemplateSchedulingOnInstanceStopAction>> onInstanceStopActions;
  /// Allows instance to be preempted. This defaults to
  /// false. Read more on this
  /// [here](https://cloud.google.com/compute/docs/instances/preemptible).
  final pulumi.Input<bool> preemptible;
  /// Describe the type of preemptible VM.
  final pulumi.Input<String> provisioningModel;
  /// Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  final pulumi.Input<bool> skipGuestOsShutdown;
  /// Specifies the timestamp, when the instance will be terminated,
  /// in RFC3339 text format. If specified, the instance termination action
  /// will be performed at the termination time.
  final pulumi.Input<String> terminationTime;

  /// Creates a new [GetRegionInstanceTemplateScheduling].
  /// [automaticRestart] Specifies whether the instance should be
  /// [availabilityDomain] Specifies the availability domain, which this instance should be scheduled on.
  /// [gracefulShutdowns] Settings for the instance to perform a graceful shutdown.
  /// [hostErrorTimeoutSeconds] Beta Time in seconds for host error detection.
  /// [instanceTerminationAction] Describe the type of termination action for `SPOT` VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  /// [localSsdRecoveryTimeouts] Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  /// [maxRunDurations] The timeout for new network connections to hosts.
  /// [minNodeCpus] Minimum number of cpus for the instance.
  /// [nodeAffinities] Specifies node affinities or anti-affinities
  /// [onHostMaintenance] Defines the maintenance behavior for this
  /// [onInstanceStopActions] Defines the behaviour for instances with the instance_termination_action.
  /// [preemptible] Allows instance to be preempted. This defaults to
  /// [provisioningModel] Describe the type of preemptible VM.
  /// [skipGuestOsShutdown] Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  /// [terminationTime] Specifies the timestamp, when the instance will be terminated,
  GetRegionInstanceTemplateScheduling({
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
      'gracefulShutdowns': pulumi.Input.mapInputValue<List<GetRegionInstanceTemplateSchedulingGracefulShutdown>, List<Map<String, dynamic>>>(gracefulShutdowns, (value) => pulumi.Input.encodeList<GetRegionInstanceTemplateSchedulingGracefulShutdown, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostErrorTimeoutSeconds': hostErrorTimeoutSeconds,
      'instanceTerminationAction': instanceTerminationAction,
      'localSsdRecoveryTimeouts': pulumi.Input.mapInputValue<List<GetRegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout>, List<Map<String, dynamic>>>(localSsdRecoveryTimeouts, (value) => pulumi.Input.encodeList<GetRegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceInterval': maintenanceInterval,
      'maxRunDurations': pulumi.Input.mapInputValue<List<GetRegionInstanceTemplateSchedulingMaxRunDuration>, List<Map<String, dynamic>>>(maxRunDurations, (value) => pulumi.Input.encodeList<GetRegionInstanceTemplateSchedulingMaxRunDuration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minNodeCpus': minNodeCpus,
      'nodeAffinities': pulumi.Input.mapInputValue<List<GetRegionInstanceTemplateSchedulingNodeAffinity>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<GetRegionInstanceTemplateSchedulingNodeAffinity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onHostMaintenance': onHostMaintenance,
      'onInstanceStopActions': pulumi.Input.mapInputValue<List<GetRegionInstanceTemplateSchedulingOnInstanceStopAction>, List<Map<String, dynamic>>>(onInstanceStopActions, (value) => pulumi.Input.encodeList<GetRegionInstanceTemplateSchedulingOnInstanceStopAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preemptible': preemptible,
      'provisioningModel': provisioningModel,
      'skipGuestOsShutdown': skipGuestOsShutdown,
      'terminationTime': terminationTime,
    };
  }

  factory GetRegionInstanceTemplateScheduling.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateScheduling(
      automaticRestart: (map['automaticRestart'] as bool).input(),
      availabilityDomain: (map['availabilityDomain'] as int).input(),
      gracefulShutdowns: (pulumi.Input.decodeList<GetRegionInstanceTemplateSchedulingGracefulShutdown>(map['gracefulShutdowns'], (value) => GetRegionInstanceTemplateSchedulingGracefulShutdown.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostErrorTimeoutSeconds: (map['hostErrorTimeoutSeconds'] as int).input(),
      instanceTerminationAction: (map['instanceTerminationAction'] as String).input(),
      localSsdRecoveryTimeouts: (pulumi.Input.decodeList<GetRegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout>(map['localSsdRecoveryTimeouts'], (value) => GetRegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maintenanceInterval: (map['maintenanceInterval'] as String).input(),
      maxRunDurations: (pulumi.Input.decodeList<GetRegionInstanceTemplateSchedulingMaxRunDuration>(map['maxRunDurations'], (value) => GetRegionInstanceTemplateSchedulingMaxRunDuration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      minNodeCpus: (map['minNodeCpus'] as int).input(),
      nodeAffinities: (pulumi.Input.decodeList<GetRegionInstanceTemplateSchedulingNodeAffinity>(map['nodeAffinities'], (value) => GetRegionInstanceTemplateSchedulingNodeAffinity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      onHostMaintenance: (map['onHostMaintenance'] as String).input(),
      onInstanceStopActions: (pulumi.Input.decodeList<GetRegionInstanceTemplateSchedulingOnInstanceStopAction>(map['onInstanceStopActions'], (value) => GetRegionInstanceTemplateSchedulingOnInstanceStopAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      preemptible: (map['preemptible'] as bool).input(),
      provisioningModel: (map['provisioningModel'] as String).input(),
      skipGuestOsShutdown: (map['skipGuestOsShutdown'] as bool).input(),
      terminationTime: (map['terminationTime'] as String).input(),
    );
  }
}

