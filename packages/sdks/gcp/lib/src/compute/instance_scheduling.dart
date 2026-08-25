// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_scheduling_graceful_shutdown.dart';
import 'instance_scheduling_local_ssd_recovery_timeout.dart';
import 'instance_scheduling_max_run_duration.dart';
import 'instance_scheduling_node_affinity.dart';
import 'instance_scheduling_on_instance_stop_action.dart';
import 'instance_scheduling_preemption_notice_duration.dart';

class InstanceScheduling {
  /// Specifies if the instance should be
  /// restarted if it was terminated by Compute Engine (not a user).
  /// Defaults to true.
  final pulumi.Input<bool?>? automaticRestart;
  /// Specifies the availability domain to place the instance in. The value must be a number between 1 and the number of availability domains specified in the spread placement policy attached to the instance.
  final pulumi.Input<int?>? availabilityDomain;
  /// Beta Settings for the instance to perform a graceful shutdown. Structure is documented below.
  final pulumi.Input<InstanceSchedulingGracefulShutdown?>? gracefulShutdown;
  /// Specifies the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  final pulumi.Input<int?>? hostErrorTimeoutSeconds;
  /// Describe the type of termination action for VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  final pulumi.Input<String?>? instanceTerminationAction;
  /// (../guides/provider_versions.html.markdown) Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour. Structure is documented below.
  final pulumi.Input<InstanceSchedulingLocalSsdRecoveryTimeout?>? localSsdRecoveryTimeout;
  /// Beta Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  final pulumi.Input<String?>? maintenanceInterval;
  /// The duration of the instance. Instance will run and be terminated after then, the termination action could be defined in `instanceTerminationAction`. Structure is documented below.
  final pulumi.Input<InstanceSchedulingMaxRunDuration?>? maxRunDuration;
  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  final pulumi.Input<int?>? minNodeCpus;
  /// Specifies node affinities or anti-affinities
  /// to determine which sole-tenant nodes your instances and managed instance
  /// groups will use as host systems. Read more on sole-tenant node creation
  /// [here](https://cloud.google.com/compute/docs/nodes/create-nodes).
  /// Structure documented below.
  final pulumi.Input<List<InstanceSchedulingNodeAffinity>?>? nodeAffinities;
  /// Describes maintenance behavior for the
  /// instance. Can be MIGRATE or TERMINATE, for more info, read
  /// [here](https://cloud.google.com/compute/docs/instances/setting-instance-scheduling-options).
  final pulumi.Input<String?>? onHostMaintenance;
  /// Specifies the action to be performed when the instance is terminated using `maxRunDuration` and `STOP` `instanceTerminationAction`. Only support `true` `discardLocalSsd` at this point. Structure is documented below.
  final pulumi.Input<InstanceSchedulingOnInstanceStopAction?>? onInstanceStopAction;
  /// Specifies if the instance is preemptible.
  /// If this field is set to true, then `automaticRestart` must be
  /// set to false.  Defaults to false.
  final pulumi.Input<bool?>? preemptible;
  /// Beta Specifies the Metadata Service preemption notice duration before the GCE ACPI G2 Soft Off signal is triggered for Spot VMs only. If not specified, there will be no wait before the G2 Soft Off signal is triggered. Structure is documented below.
  final pulumi.Input<InstanceSchedulingPreemptionNoticeDuration?>? preemptionNoticeDuration;
  /// Describe the type of provisioning model for the instance. This field accepts the value `STANDARD`, `SPOT`, `FLEX_START`, or `RESERVATION_BOUND`. If the value is `STANDARD`, there will be no discount. If this is set to `SPOT`,
  /// `preemptible` should be `true` and `automaticRestart` should be
  /// `false`. For more info about
  /// `SPOT`, read [here](https://cloud.google.com/compute/docs/instances/spot).
  /// If this is set to `FLEX_START`, `automaticRestart` should be `false` and `instanceTerminationAction` should be set to `DELETE`. A `maxRunDuration` must also be specified. For more info about
  /// `FLEX_START`, read [here](https://cloud.google.com/compute/docs/instances/flex-start-vms).
  /// If this is set to `RESERVATION_BOUND`, the instance is bound to a specific reservation and will only consume capacity from that reservation. A `reservationAffinity` block with `type` set to `SPECIFIC_RESERVATION` should also be configured.
  final pulumi.Input<String?>? provisioningModel;
  /// Beta Boolean parameter. Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  final pulumi.Input<bool?>? skipGuestOsShutdown;
  /// Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  final pulumi.Input<String?>? terminationTime;

  /// Creates a new [InstanceScheduling].
  /// [automaticRestart] Specifies if the instance should be
  /// [availabilityDomain] Specifies the availability domain to place the instance in. The value must be a number between 1 and the number of availability domains specified in the spread placement policy attached to the instance.
  /// [gracefulShutdown] Beta Settings for the instance to perform a graceful shutdown. Structure is documented below.
  /// [hostErrorTimeoutSeconds] Specifies the time in seconds for host error detection, the value must be within the range of [90, 330] with the increment of 30, if unset, the default behavior of host error recovery will be used.
  /// [instanceTerminationAction] Describe the type of termination action for VM. Can be `STOP` or `DELETE`.  Read more on [here](https://cloud.google.com/compute/docs/instances/create-use-spot)
  /// [localSsdRecoveryTimeout] (../guides/provider_versions.html.markdown) Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the Local Ssd state is attempted. Its value should be in between 0 and 168 hours with hour granularity and the default value being 1 hour. Structure is documented below.
  /// [maintenanceInterval] Beta Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  /// [maxRunDuration] The duration of the instance. Instance will run and be terminated after then, the termination action could be defined in `instanceTerminationAction`. Structure is documented below.
  /// [minNodeCpus] The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.
  /// [nodeAffinities] Specifies node affinities or anti-affinities
  /// [onHostMaintenance] Describes maintenance behavior for the
  /// [onInstanceStopAction] Specifies the action to be performed when the instance is terminated using `maxRunDuration` and `STOP` `instanceTerminationAction`. Only support `true` `discardLocalSsd` at this point. Structure is documented below.
  /// [preemptible] Specifies if the instance is preemptible.
  /// [preemptionNoticeDuration] Beta Specifies the Metadata Service preemption notice duration before the GCE ACPI G2 Soft Off signal is triggered for Spot VMs only. If not specified, there will be no wait before the G2 Soft Off signal is triggered. Structure is documented below.
  /// [provisioningModel] Describe the type of provisioning model for the instance. This field accepts the value `STANDARD`, `SPOT`, `FLEX_START`, or `RESERVATION_BOUND`. If the value is `STANDARD`, there will be no discount. If this is set to `SPOT`,
  /// [skipGuestOsShutdown] Beta Boolean parameter. Default is false and there will be 120 seconds between GCE ACPI G2 Soft Off and ACPI G3 Mechanical Off for Standard VMs and 30 seconds for Spot VMs.
  /// [terminationTime] Specifies the timestamp, when the instance will be terminated, in RFC3339 text format. If specified, the instance termination action will be performed at the termination time.
  const InstanceScheduling({
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
      'gracefulShutdown': ?pulumi.Input.mapOptionalInputValue<InstanceSchedulingGracefulShutdown, Map<String, dynamic>>(gracefulShutdown, (value) => value.toMap()),
      'hostErrorTimeoutSeconds': ?hostErrorTimeoutSeconds,
      'instanceTerminationAction': ?instanceTerminationAction,
      'localSsdRecoveryTimeout': ?pulumi.Input.mapOptionalInputValue<InstanceSchedulingLocalSsdRecoveryTimeout, Map<String, dynamic>>(localSsdRecoveryTimeout, (value) => value.toMap()),
      'maintenanceInterval': ?maintenanceInterval,
      'maxRunDuration': ?pulumi.Input.mapOptionalInputValue<InstanceSchedulingMaxRunDuration, Map<String, dynamic>>(maxRunDuration, (value) => value.toMap()),
      'minNodeCpus': ?minNodeCpus,
      'nodeAffinities': ?pulumi.Input.mapOptionalInputValue<List<InstanceSchedulingNodeAffinity>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<InstanceSchedulingNodeAffinity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onHostMaintenance': ?onHostMaintenance,
      'onInstanceStopAction': ?pulumi.Input.mapOptionalInputValue<InstanceSchedulingOnInstanceStopAction, Map<String, dynamic>>(onInstanceStopAction, (value) => value.toMap()),
      'preemptible': ?preemptible,
      'preemptionNoticeDuration': ?pulumi.Input.mapOptionalInputValue<InstanceSchedulingPreemptionNoticeDuration, Map<String, dynamic>>(preemptionNoticeDuration, (value) => value.toMap()),
      'provisioningModel': ?provisioningModel,
      'skipGuestOsShutdown': ?skipGuestOsShutdown,
      'terminationTime': ?terminationTime,
    };
  }

  factory InstanceScheduling.fromMap(Map<String, dynamic> map) {
    return InstanceScheduling(
      automaticRestart: (() { final guardedValue = map['automaticRestart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityDomain: (() { final guardedValue = map['availabilityDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      gracefulShutdown: (() { final guardedValue = map['gracefulShutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceSchedulingGracefulShutdown.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostErrorTimeoutSeconds: (() { final guardedValue = map['hostErrorTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      instanceTerminationAction: (() { final guardedValue = map['instanceTerminationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localSsdRecoveryTimeout: (() { final guardedValue = map['localSsdRecoveryTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceSchedulingLocalSsdRecoveryTimeout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceInterval: (() { final guardedValue = map['maintenanceInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxRunDuration: (() { final guardedValue = map['maxRunDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceSchedulingMaxRunDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minNodeCpus: (() { final guardedValue = map['minNodeCpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      nodeAffinities: (() { final guardedValue = map['nodeAffinities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceSchedulingNodeAffinity>(guardedValue, (value) => InstanceSchedulingNodeAffinity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      onHostMaintenance: (() { final guardedValue = map['onHostMaintenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onInstanceStopAction: (() { final guardedValue = map['onInstanceStopAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceSchedulingOnInstanceStopAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preemptible: (() { final guardedValue = map['preemptible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      preemptionNoticeDuration: (() { final guardedValue = map['preemptionNoticeDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceSchedulingPreemptionNoticeDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningModel: (() { final guardedValue = map['provisioningModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipGuestOsShutdown: (() { final guardedValue = map['skipGuestOsShutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      terminationTime: (() { final guardedValue = map['terminationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
