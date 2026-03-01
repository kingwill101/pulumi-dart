// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_template_scheduling_graceful_shutdown.dart';
import 'region_instance_template_scheduling_local_ssd_recovery_timeout.dart';
import 'region_instance_template_scheduling_max_run_duration.dart';
import 'region_instance_template_scheduling_node_affinity.dart';
import 'region_instance_template_scheduling_on_instance_stop_action.dart';

class RegionInstanceTemplateScheduling {
  /// Specifies whether the instance should be
  /// automatically restarted if it is terminated by Compute Engine (not
  /// terminated by a user). This defaults to true.
  final bool? automaticRestart;
  /// Specifies the availability domain to place the instance in. The value must be a number between 1 and the number of availability domains specified in the spread placement policy attached to the instance.
  final int? availabilityDomain;
  /// Settings for the instance to perform a graceful shutdown.
  final RegionInstanceTemplateSchedulingGracefulShutdown? gracefulShutdown;
  /// Specifies the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  final int? hostErrorTimeoutSeconds;
  /// Describe the type of termination action for `SPOT` VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  final String? instanceTerminationAction;
  /// Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// recovery of the Local Ssd state is attempted. Its value should be in
  /// between 0 and 168 hours with hour granularity and the default value being 1
  /// hour.
  final List<RegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout>? localSsdRecoveryTimeouts;
  /// Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  final String? maintenanceInterval;
  /// The duration of the instance. Instance will run and be terminated after then, the termination action could be defined in `instance_termination_action`. Only support `DELETE` `instance_termination_action` at this point. Structure is documented below.
  final RegionInstanceTemplateSchedulingMaxRunDuration? maxRunDuration;
  /// Minimum number of cpus for the instance.
  final int? minNodeCpus;
  /// Specifies node affinities or anti-affinities
  /// to determine which sole-tenant nodes your instances and managed instance
  /// groups will use as host systems. Read more on sole-tenant node creation
  /// [here](https://cloud.google.com/compute/docs/nodes/create-nodes).
  /// Structure documented below.
  final List<RegionInstanceTemplateSchedulingNodeAffinity>? nodeAffinities;
  /// Defines the maintenance behavior for this
  /// instance.
  final String? onHostMaintenance;
  /// Defines the behaviour for instances with the instance_termination_action.
  final RegionInstanceTemplateSchedulingOnInstanceStopAction? onInstanceStopAction;
  /// Allows instance to be preempted. This defaults to
  /// false. Read more on this
  /// [here](https://cloud.google.com/compute/docs/instances/preemptible).
  final bool? preemptible;
  /// Describe the type of preemptible VM. This field accepts the value `STANDARD` or `SPOT`. If the value is `STANDARD`, there will be no discount. If this   is set to `SPOT`,
  /// `preemptible` should be `true` and `automatic_restart` should be
  /// `false`. For more info about
  /// `SPOT`, read [here](https://cloud.google.com/compute/docs/instances/spot)
  final String? provisioningModel;
  /// Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  final bool? skipGuestOsShutdown;
  /// Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  final String? terminationTime;

  /// Creates a new [RegionInstanceTemplateScheduling].
  /// [automaticRestart] Specifies whether the instance should be
  /// [availabilityDomain] Specifies the availability domain to place the instance in. The value must be a number between 1 and the number of availability domains specified in the spread placement policy attached to the instance.
  /// [gracefulShutdown] Settings for the instance to perform a graceful shutdown.
  /// [hostErrorTimeoutSeconds] Specifies the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  /// [instanceTerminationAction] Describe the type of termination action for `SPOT` VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  /// [localSsdRecoveryTimeouts] Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  /// [maxRunDuration] The duration of the instance. Instance will run and be terminated after then, the termination action could be defined in `instance_termination_action`. Only support `DELETE` `instance_termination_action` at this point. Structure is documented below.
  /// [minNodeCpus] Minimum number of cpus for the instance.
  /// [nodeAffinities] Specifies node affinities or anti-affinities
  /// [onHostMaintenance] Defines the maintenance behavior for this
  /// [onInstanceStopAction] Defines the behaviour for instances with the instance_termination_action.
  /// [preemptible] Allows instance to be preempted. This defaults to
  /// [provisioningModel] Describe the type of preemptible VM. This field accepts the value `STANDARD` or `SPOT`. If the value is `STANDARD`, there will be no discount. If this   is set to `SPOT`,
  /// [skipGuestOsShutdown] Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  /// [terminationTime] Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  RegionInstanceTemplateScheduling({
    this.automaticRestart,
    this.availabilityDomain,
    this.gracefulShutdown,
    this.hostErrorTimeoutSeconds,
    this.instanceTerminationAction,
    this.localSsdRecoveryTimeouts,
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
      'localSsdRecoveryTimeouts': ?localSsdRecoveryTimeouts == null ? null : pulumi.Input.encodeList<RegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout, Map<String, dynamic>>(localSsdRecoveryTimeouts!, (value) => value.toMap()),
      'maintenanceInterval': ?maintenanceInterval,
      'maxRunDuration': ?maxRunDuration == null ? null : maxRunDuration!.toMap(),
      'minNodeCpus': ?minNodeCpus,
      'nodeAffinities': ?nodeAffinities == null ? null : pulumi.Input.encodeList<RegionInstanceTemplateSchedulingNodeAffinity, Map<String, dynamic>>(nodeAffinities!, (value) => value.toMap()),
      'onHostMaintenance': ?onHostMaintenance,
      'onInstanceStopAction': ?onInstanceStopAction == null ? null : onInstanceStopAction!.toMap(),
      'preemptible': ?preemptible,
      'provisioningModel': ?provisioningModel,
      'skipGuestOsShutdown': ?skipGuestOsShutdown,
      'terminationTime': ?terminationTime,
    };
  }

  factory RegionInstanceTemplateScheduling.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateScheduling(
      automaticRestart: map['automaticRestart'] == null ? null : map['automaticRestart'] as bool,
      availabilityDomain: map['availabilityDomain'] == null ? null : map['availabilityDomain'] as int,
      gracefulShutdown: map['gracefulShutdown'] == null ? null : RegionInstanceTemplateSchedulingGracefulShutdown.fromMap((map['gracefulShutdown'] as Map).cast<String, dynamic>()),
      hostErrorTimeoutSeconds: map['hostErrorTimeoutSeconds'] == null ? null : map['hostErrorTimeoutSeconds'] as int,
      instanceTerminationAction: map['instanceTerminationAction'] == null ? null : map['instanceTerminationAction'] as String,
      localSsdRecoveryTimeouts: map['localSsdRecoveryTimeouts'] == null ? null : pulumi.Input.decodeList<RegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout>(map['localSsdRecoveryTimeouts'], (value) => RegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout.fromMap((value as Map).cast<String, dynamic>())),
      maintenanceInterval: map['maintenanceInterval'] == null ? null : map['maintenanceInterval'] as String,
      maxRunDuration: map['maxRunDuration'] == null ? null : RegionInstanceTemplateSchedulingMaxRunDuration.fromMap((map['maxRunDuration'] as Map).cast<String, dynamic>()),
      minNodeCpus: map['minNodeCpus'] == null ? null : map['minNodeCpus'] as int,
      nodeAffinities: map['nodeAffinities'] == null ? null : pulumi.Input.decodeList<RegionInstanceTemplateSchedulingNodeAffinity>(map['nodeAffinities'], (value) => RegionInstanceTemplateSchedulingNodeAffinity.fromMap((value as Map).cast<String, dynamic>())),
      onHostMaintenance: map['onHostMaintenance'] == null ? null : map['onHostMaintenance'] as String,
      onInstanceStopAction: map['onInstanceStopAction'] == null ? null : RegionInstanceTemplateSchedulingOnInstanceStopAction.fromMap((map['onInstanceStopAction'] as Map).cast<String, dynamic>()),
      preemptible: map['preemptible'] == null ? null : map['preemptible'] as bool,
      provisioningModel: map['provisioningModel'] == null ? null : map['provisioningModel'] as String,
      skipGuestOsShutdown: map['skipGuestOsShutdown'] == null ? null : map['skipGuestOsShutdown'] as bool,
      terminationTime: map['terminationTime'] == null ? null : map['terminationTime'] as String,
    );
  }
}

