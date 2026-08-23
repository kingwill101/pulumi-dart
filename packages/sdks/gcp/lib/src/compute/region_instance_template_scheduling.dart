// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_template_scheduling_graceful_shutdown.dart';
import 'region_instance_template_scheduling_local_ssd_recovery_timeout.dart';
import 'region_instance_template_scheduling_max_run_duration.dart';
import 'region_instance_template_scheduling_node_affinity.dart';
import 'region_instance_template_scheduling_on_instance_stop_action.dart';
import 'region_instance_template_scheduling_preemption_notice_duration.dart';

class RegionInstanceTemplateScheduling {
  /// Specifies whether the instance should be
  /// automatically restarted if it is terminated by Compute Engine (not
  /// terminated by a user). This defaults to true.
  final pulumi.Input<bool>? automaticRestart;
  /// Specifies the availability domain to place the instance in. The value must be a number between 1 and the number of availability domains specified in the spread placement policy attached to the instance.
  final pulumi.Input<int>? availabilityDomain;
  /// Settings for the instance to perform a graceful shutdown.
  final pulumi.Input<RegionInstanceTemplateSchedulingGracefulShutdown>? gracefulShutdown;
  /// Specifies the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  final pulumi.Input<int>? hostErrorTimeoutSeconds;
  /// Describe the type of termination action for `SPOT` VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  final pulumi.Input<String>? instanceTerminationAction;
  /// Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// recovery of the Local Ssd state is attempted. Its value should be in
  /// between 0 and 168 hours with hour granularity and the default value being 1
  /// hour.
  final pulumi.Input<List<RegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout>>? localSsdRecoveryTimeouts;
  /// Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  final pulumi.Input<String>? maintenanceInterval;
  /// The duration of the instance. Instance will run and be terminated after then, the termination action could be defined in `instanceTerminationAction`. Only support `DELETE` `instanceTerminationAction` at this point. Structure is documented below.
  final pulumi.Input<RegionInstanceTemplateSchedulingMaxRunDuration>? maxRunDuration;
  /// Minimum number of cpus for the instance.
  final pulumi.Input<int>? minNodeCpus;
  /// Specifies node affinities or anti-affinities
  /// to determine which sole-tenant nodes your instances and managed instance
  /// groups will use as host systems. Read more on sole-tenant node creation
  /// [here](https://cloud.google.com/compute/docs/nodes/create-nodes).
  /// Structure documented below.
  final pulumi.Input<List<RegionInstanceTemplateSchedulingNodeAffinity>>? nodeAffinities;
  /// Defines the maintenance behavior for this
  /// instance.
  final pulumi.Input<String>? onHostMaintenance;
  /// Defines the behaviour for instances with the instance_termination_action.
  final pulumi.Input<RegionInstanceTemplateSchedulingOnInstanceStopAction>? onInstanceStopAction;
  /// Allows instance to be preempted. This defaults to
  /// false. Read more on this
  /// [here](https://cloud.google.com/compute/docs/instances/preemptible).
  final pulumi.Input<bool>? preemptible;
  /// The duration of the notice that the instance will receive before it is preempted.
  final pulumi.Input<RegionInstanceTemplateSchedulingPreemptionNoticeDuration>? preemptionNoticeDuration;
  /// Describe the type of provisioning model for the instance. This field accepts the value `STANDARD`, `SPOT`, `FLEX_START`, or `RESERVATION_BOUND`. If the value is `STANDARD`, there will be no discount. If this is set to `SPOT`,
  /// `preemptible` should be `true` and `automaticRestart` should be
  /// `false`. For more info about
  /// `SPOT`, read [here](https://cloud.google.com/compute/docs/instances/spot).
  /// If this is set to `FLEX_START`, `automaticRestart` should be `false` and `instanceTerminationAction` should be set to `DELETE`. A `maxRunDuration` must also be specified. For more info about
  /// `FLEX_START`, read [here](https://cloud.google.com/compute/docs/instances/flex-start-vms).
  /// If this is set to `RESERVATION_BOUND`, the instance is bound to a specific reservation and will only consume capacity from that reservation. A `reservationAffinity` block with `type` set to `SPECIFIC_RESERVATION` should also be configured.
  final pulumi.Input<String>? provisioningModel;
  /// Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  final pulumi.Input<bool>? skipGuestOsShutdown;
  /// Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  final pulumi.Input<String>? terminationTime;

  /// Creates a new [RegionInstanceTemplateScheduling].
  /// [automaticRestart] Specifies whether the instance should be
  /// [availabilityDomain] Specifies the availability domain to place the instance in. The value must be a number between 1 and the number of availability domains specified in the spread placement policy attached to the instance.
  /// [gracefulShutdown] Settings for the instance to perform a graceful shutdown.
  /// [hostErrorTimeoutSeconds] Specifies the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  /// [instanceTerminationAction] Describe the type of termination action for `SPOT` VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  /// [localSsdRecoveryTimeouts] Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  /// [maxRunDuration] The duration of the instance. Instance will run and be terminated after then, the termination action could be defined in `instanceTerminationAction`. Only support `DELETE` `instanceTerminationAction` at this point. Structure is documented below.
  /// [minNodeCpus] Minimum number of cpus for the instance.
  /// [nodeAffinities] Specifies node affinities or anti-affinities
  /// [onHostMaintenance] Defines the maintenance behavior for this
  /// [onInstanceStopAction] Defines the behaviour for instances with the instance_termination_action.
  /// [preemptible] Allows instance to be preempted. This defaults to
  /// [preemptionNoticeDuration] The duration of the notice that the instance will receive before it is preempted.
  /// [provisioningModel] Describe the type of provisioning model for the instance. This field accepts the value `STANDARD`, `SPOT`, `FLEX_START`, or `RESERVATION_BOUND`. If the value is `STANDARD`, there will be no discount. If this is set to `SPOT`,
  /// [skipGuestOsShutdown] Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  /// [terminationTime] Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  const RegionInstanceTemplateScheduling({
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
    this.preemptionNoticeDuration,
    this.provisioningModel,
    this.skipGuestOsShutdown,
    this.terminationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticRestart': ?automaticRestart,
      'availabilityDomain': ?availabilityDomain,
      'gracefulShutdown': ?pulumi.Input.mapOptionalInputValue<RegionInstanceTemplateSchedulingGracefulShutdown, Map<String, dynamic>>(gracefulShutdown, (value) => value.toMap()),
      'hostErrorTimeoutSeconds': ?hostErrorTimeoutSeconds,
      'instanceTerminationAction': ?instanceTerminationAction,
      'localSsdRecoveryTimeouts': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout>, List<Map<String, dynamic>>>(localSsdRecoveryTimeouts, (value) => pulumi.Input.encodeList<RegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceInterval': ?maintenanceInterval,
      'maxRunDuration': ?pulumi.Input.mapOptionalInputValue<RegionInstanceTemplateSchedulingMaxRunDuration, Map<String, dynamic>>(maxRunDuration, (value) => value.toMap()),
      'minNodeCpus': ?minNodeCpus,
      'nodeAffinities': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceTemplateSchedulingNodeAffinity>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<RegionInstanceTemplateSchedulingNodeAffinity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onHostMaintenance': ?onHostMaintenance,
      'onInstanceStopAction': ?pulumi.Input.mapOptionalInputValue<RegionInstanceTemplateSchedulingOnInstanceStopAction, Map<String, dynamic>>(onInstanceStopAction, (value) => value.toMap()),
      'preemptible': ?preemptible,
      'preemptionNoticeDuration': ?pulumi.Input.mapOptionalInputValue<RegionInstanceTemplateSchedulingPreemptionNoticeDuration, Map<String, dynamic>>(preemptionNoticeDuration, (value) => value.toMap()),
      'provisioningModel': ?provisioningModel,
      'skipGuestOsShutdown': ?skipGuestOsShutdown,
      'terminationTime': ?terminationTime,
    };
  }

  factory RegionInstanceTemplateScheduling.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateScheduling(
      automaticRestart: (() { final guardedValue = map['automaticRestart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityDomain: (() { final guardedValue = map['availabilityDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gracefulShutdown: (() { final guardedValue = map['gracefulShutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceTemplateSchedulingGracefulShutdown.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostErrorTimeoutSeconds: (() { final guardedValue = map['hostErrorTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceTerminationAction: (() { final guardedValue = map['instanceTerminationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localSsdRecoveryTimeouts: (() { final guardedValue = map['localSsdRecoveryTimeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout>(guardedValue, (value) => RegionInstanceTemplateSchedulingLocalSsdRecoveryTimeout.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maintenanceInterval: (() { final guardedValue = map['maintenanceInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxRunDuration: (() { final guardedValue = map['maxRunDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceTemplateSchedulingMaxRunDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minNodeCpus: (() { final guardedValue = map['minNodeCpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeAffinities: (() { final guardedValue = map['nodeAffinities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstanceTemplateSchedulingNodeAffinity>(guardedValue, (value) => RegionInstanceTemplateSchedulingNodeAffinity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      onHostMaintenance: (() { final guardedValue = map['onHostMaintenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onInstanceStopAction: (() { final guardedValue = map['onInstanceStopAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceTemplateSchedulingOnInstanceStopAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preemptible: (() { final guardedValue = map['preemptible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      preemptionNoticeDuration: (() { final guardedValue = map['preemptionNoticeDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceTemplateSchedulingPreemptionNoticeDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningModel: (() { final guardedValue = map['provisioningModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipGuestOsShutdown: (() { final guardedValue = map['skipGuestOsShutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      terminationTime: (() { final guardedValue = map['terminationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
