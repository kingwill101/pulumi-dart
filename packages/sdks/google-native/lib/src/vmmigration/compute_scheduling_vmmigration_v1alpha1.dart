// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_scheduling_on_host_maintenance_vmmigration_v1alpha1.dart';
import 'compute_scheduling_restart_type_vmmigration_v1alpha1.dart';
import 'scheduling_node_affinity_vmmigration_v1alpha1.dart';

/// Scheduling information for VM on maintenance/restart behaviour and node allocation in sole tenant nodes.
class ComputeSchedulingVmmigrationV1alpha1 {
  final pulumi.Input<bool>? automaticRestart;
  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node. Ignored if no node_affinites are configured.
  final pulumi.Input<int>? minNodeCpus;
  /// A set of node affinity and anti-affinity configurations for sole tenant nodes.
  final pulumi.Input<List<SchedulingNodeAffinityVmmigrationV1alpha1>>? nodeAffinities;
  /// How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
  final pulumi.Input<ComputeSchedulingOnHostMaintenanceVmmigrationV1alpha1>? onHostMaintenance;
  /// Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). This configuration is identical to `automaticRestart` field in Compute Engine create instance under scheduling. It was changed to an enum (instead of a boolean) to match the default value in Compute Engine which is automatic restart.
  final pulumi.Input<ComputeSchedulingRestartTypeVmmigrationV1alpha1>? restartType;

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
      'nodeAffinities': ?pulumi.Input.mapOptionalInputValue<List<SchedulingNodeAffinityVmmigrationV1alpha1>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<SchedulingNodeAffinityVmmigrationV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onHostMaintenance': ?pulumi.Input.mapOptionalInputValue<ComputeSchedulingOnHostMaintenanceVmmigrationV1alpha1, String>(onHostMaintenance, (value) => value.wireValue),
      'restartType': ?pulumi.Input.mapOptionalInputValue<ComputeSchedulingRestartTypeVmmigrationV1alpha1, String>(restartType, (value) => value.wireValue),
    };
  }

  factory ComputeSchedulingVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return ComputeSchedulingVmmigrationV1alpha1(
      automaticRestart: (() { final guardedValue = map['automaticRestart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      minNodeCpus: (() { final guardedValue = map['minNodeCpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeAffinities: (() { final guardedValue = map['nodeAffinities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SchedulingNodeAffinityVmmigrationV1alpha1>(guardedValue, (value) => SchedulingNodeAffinityVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      onHostMaintenance: (() { final guardedValue = map['onHostMaintenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeSchedulingOnHostMaintenanceVmmigrationV1alpha1.fromValue(guardedValue as String)); })(),
      restartType: (() { final guardedValue = map['restartType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeSchedulingRestartTypeVmmigrationV1alpha1.fromValue(guardedValue as String)); })(),
    );
  }
}

