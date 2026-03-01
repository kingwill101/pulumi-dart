// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_scheduling_on_host_maintenance_vmmigration_v1alpha1.dart';
import 'compute_scheduling_restart_type_vmmigration_v1alpha1.dart';
import 'scheduling_node_affinity_vmmigration_v1alpha1.dart';

/// Scheduling information for VM on maintenance/restart behaviour and node allocation in sole tenant nodes.
class ComputeSchedulingVmmigrationV1alpha1 {
  final bool? automaticRestart;
  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node. Ignored if no node_affinites are configured.
  final int? minNodeCpus;
  /// A set of node affinity and anti-affinity configurations for sole tenant nodes.
  final List<SchedulingNodeAffinityVmmigrationV1alpha1>? nodeAffinities;
  /// How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
  final ComputeSchedulingOnHostMaintenanceVmmigrationV1alpha1? onHostMaintenance;
  /// Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). This configuration is identical to `automaticRestart` field in Compute Engine create instance under scheduling. It was changed to an enum (instead of a boolean) to match the default value in Compute Engine which is automatic restart.
  final ComputeSchedulingRestartTypeVmmigrationV1alpha1? restartType;

  /// Creates a new [ComputeSchedulingVmmigrationV1alpha1].
  /// [automaticRestart] Optional.
  /// [minNodeCpus] The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node. Ignored if no node_affinites are configured.
  /// [nodeAffinities] A set of node affinity and anti-affinity configurations for sole tenant nodes.
  /// [onHostMaintenance] How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
  /// [restartType] Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). This configuration is identical to `automaticRestart` field in Compute Engine create instance under scheduling. It was changed to an enum (instead of a boolean) to match the default value in Compute Engine which is automatic restart.
  ComputeSchedulingVmmigrationV1alpha1({
    this.automaticRestart,
    this.minNodeCpus,
    this.nodeAffinities,
    this.onHostMaintenance,
    this.restartType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticRestart': ?automaticRestart,
      'minNodeCpus': ?minNodeCpus,
      'nodeAffinities': ?nodeAffinities == null ? null : pulumi.Input.encodeList<SchedulingNodeAffinityVmmigrationV1alpha1, Map<String, dynamic>>(nodeAffinities!, (value) => value.toMap()),
      'onHostMaintenance': ?onHostMaintenance == null ? null : onHostMaintenance!.value,
      'restartType': ?restartType == null ? null : restartType!.value,
    };
  }

  factory ComputeSchedulingVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return ComputeSchedulingVmmigrationV1alpha1(
      automaticRestart: map['automaticRestart'] == null ? null : map['automaticRestart'] as bool,
      minNodeCpus: map['minNodeCpus'] == null ? null : map['minNodeCpus'] as int,
      nodeAffinities: map['nodeAffinities'] == null ? null : pulumi.Input.decodeList<SchedulingNodeAffinityVmmigrationV1alpha1>(map['nodeAffinities'], (value) => SchedulingNodeAffinityVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
      onHostMaintenance: map['onHostMaintenance'] == null ? null : ComputeSchedulingOnHostMaintenanceVmmigrationV1alpha1.fromValue(map['onHostMaintenance'] as String),
      restartType: map['restartType'] == null ? null : ComputeSchedulingRestartTypeVmmigrationV1alpha1.fromValue(map['restartType'] as String),
    );
  }
}

