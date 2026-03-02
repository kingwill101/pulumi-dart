// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduling_node_affinity_response_vmmigration_v1alpha1.dart';

/// Scheduling information for VM on maintenance/restart behaviour and node allocation in sole tenant nodes.
class ComputeSchedulingResponseVmmigrationV1alpha1 {
  final pulumi.Input<bool> automaticRestart;
  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node. Ignored if no node_affinites are configured.
  final pulumi.Input<int> minNodeCpus;
  /// A set of node affinity and anti-affinity configurations for sole tenant nodes.
  final pulumi.Input<List<SchedulingNodeAffinityResponseVmmigrationV1alpha1>> nodeAffinities;
  /// How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
  final pulumi.Input<String> onHostMaintenance;
  /// Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). This configuration is identical to `automaticRestart` field in Compute Engine create instance under scheduling. It was changed to an enum (instead of a boolean) to match the default value in Compute Engine which is automatic restart.
  final pulumi.Input<String> restartType;

  /// Creates a new [ComputeSchedulingResponseVmmigrationV1alpha1].
  /// [automaticRestart] Required.
  /// [minNodeCpus] The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node. Ignored if no node_affinites are configured.
  /// [nodeAffinities] A set of node affinity and anti-affinity configurations for sole tenant nodes.
  /// [onHostMaintenance] How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
  /// [restartType] Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). This configuration is identical to `automaticRestart` field in Compute Engine create instance under scheduling. It was changed to an enum (instead of a boolean) to match the default value in Compute Engine which is automatic restart.
  ComputeSchedulingResponseVmmigrationV1alpha1({
    required this.automaticRestart,
    required this.minNodeCpus,
    required this.nodeAffinities,
    required this.onHostMaintenance,
    required this.restartType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticRestart': automaticRestart,
      'minNodeCpus': minNodeCpus,
      'nodeAffinities': pulumi.Input.mapInputValue<List<SchedulingNodeAffinityResponseVmmigrationV1alpha1>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<SchedulingNodeAffinityResponseVmmigrationV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onHostMaintenance': onHostMaintenance,
      'restartType': restartType,
    };
  }

  factory ComputeSchedulingResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return ComputeSchedulingResponseVmmigrationV1alpha1(
      automaticRestart: (map['automaticRestart'] as bool).input(),
      minNodeCpus: (map['minNodeCpus'] as int).input(),
      nodeAffinities: (pulumi.Input.decodeList<SchedulingNodeAffinityResponseVmmigrationV1alpha1>(map['nodeAffinities'], (value) => SchedulingNodeAffinityResponseVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      onHostMaintenance: (map['onHostMaintenance'] as String).input(),
      restartType: (map['restartType'] as String).input(),
    );
  }
}

