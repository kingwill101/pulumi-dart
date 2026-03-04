// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_compute_instance_restore_properties_scheduling_local_ssd_recovery_timeout.dart';
import 'restore_workload_compute_instance_restore_properties_scheduling_max_run_duration.dart';
import 'restore_workload_compute_instance_restore_properties_scheduling_node_affinity.dart';

class RestoreWorkloadComputeInstanceRestorePropertiesScheduling {
  /// (Optional)
  final pulumi.Input<bool>? automaticRestart;

  /// Possible values are: `INSTANCE_TERMINATION_ACTION_UNSPECIFIED`, `DELETE`, `STOP`.
  final pulumi.Input<String>? instanceTerminationAction;

  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<
    RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout
  >?
  localSsdRecoveryTimeout;

  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<
    RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration
  >?
  maxRunDuration;

  /// (Optional)
  final pulumi.Input<int>? minNodeCpus;

  /// Structure is documented below.
  final pulumi.Input<
    List<RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity>
  >?
  nodeAffinities;

  /// Possible values are: `ON_HOST_MAINTENANCE_UNSPECIFIED`, `TERMINATE`, `MIGRATE`.
  final pulumi.Input<String>? onHostMaintenance;

  /// (Optional)
  final pulumi.Input<bool>? preemptible;

  /// Possible values are: `PROVISIONING_MODEL_UNSPECIFIED`, `STANDARD`, `SPOT`.
  final pulumi.Input<String>? provisioningModel;

  /// (Optional)
  final pulumi.Input<String>? terminationTime;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesScheduling].
  /// [automaticRestart] (Optional)
  /// [instanceTerminationAction] Possible values are: `INSTANCE_TERMINATION_ACTION_UNSPECIFIED`, `DELETE`, `STOP`.
  /// [localSsdRecoveryTimeout] A nested object resource.
  /// [maxRunDuration] A nested object resource.
  /// [minNodeCpus] (Optional)
  /// [nodeAffinities] Structure is documented below.
  /// [onHostMaintenance] Possible values are: `ON_HOST_MAINTENANCE_UNSPECIFIED`, `TERMINATE`, `MIGRATE`.
  /// [preemptible] (Optional)
  /// [provisioningModel] Possible values are: `PROVISIONING_MODEL_UNSPECIFIED`, `STANDARD`, `SPOT`.
  /// [terminationTime] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesScheduling({
    this.automaticRestart,
    this.instanceTerminationAction,
    this.localSsdRecoveryTimeout,
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
      'instanceTerminationAction': ?instanceTerminationAction,
      'localSsdRecoveryTimeout':
          ?pulumi.Input.mapOptionalInputValue<
            RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout,
            Map<String, dynamic>
          >(localSsdRecoveryTimeout, (value) => value.toMap()),
      'maxRunDuration':
          ?pulumi.Input.mapOptionalInputValue<
            RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration,
            Map<String, dynamic>
          >(maxRunDuration, (value) => value.toMap()),
      'minNodeCpus': ?minNodeCpus,
      'nodeAffinities':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity
            >,
            List<Map<String, dynamic>>
          >(
            nodeAffinities,
            (value) =>
                pulumi.Input.encodeList<
                  RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'onHostMaintenance': ?onHostMaintenance,
      'preemptible': ?preemptible,
      'provisioningModel': ?provisioningModel,
      'terminationTime': ?terminationTime,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesScheduling.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadComputeInstanceRestorePropertiesScheduling(
      automaticRestart: (() {
        final guardedValue = map['automaticRestart'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      instanceTerminationAction: (() {
        final guardedValue = map['instanceTerminationAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      localSsdRecoveryTimeout: (() {
        final guardedValue = map['localSsdRecoveryTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RestoreWorkloadComputeInstanceRestorePropertiesSchedulingLocalSsdRecoveryTimeout.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maxRunDuration: (() {
        final guardedValue = map['maxRunDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RestoreWorkloadComputeInstanceRestorePropertiesSchedulingMaxRunDuration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      minNodeCpus: (() {
        final guardedValue = map['minNodeCpus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      nodeAffinities: (() {
        final guardedValue = map['nodeAffinities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity
          >(
            guardedValue,
            (value) =>
                RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      onHostMaintenance: (() {
        final guardedValue = map['onHostMaintenance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preemptible: (() {
        final guardedValue = map['preemptible'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      provisioningModel: (() {
        final guardedValue = map['provisioningModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      terminationTime: (() {
        final guardedValue = map['terminationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
