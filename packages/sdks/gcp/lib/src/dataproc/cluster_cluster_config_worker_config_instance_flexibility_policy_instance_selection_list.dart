// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_worker_config_instance_flexibility_policy_instance_selection_list_disk_config.dart';

class ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList {
  /// Disk configuration to apply to the instances in this instance selection.
  final pulumi.Input<ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig>? diskConfig;
  /// Full machine-type names, e.g. `"n1-standard-16"`.
  final pulumi.Input<List<String>>? machineTypes;
  /// Preference of this instance selection. A lower number means higher preference. Dataproc will first try to create a VM based on the machine-type with priority rank and fallback to next rank based on availability. Machine types and instance selections with the same priority have the same preference.
  final pulumi.Input<int>? rank;

  /// Creates a new [ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList].
  /// [diskConfig] Disk configuration to apply to the instances in this instance selection.
  /// [machineTypes] Full machine-type names, e.g. `"n1-standard-16"`.
  /// [rank] Preference of this instance selection. A lower number means higher preference. Dataproc will first try to create a VM based on the machine-type with priority rank and fallback to next rank based on availability. Machine types and instance selections with the same priority have the same preference.
  const ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList({
    this.diskConfig,
    this.machineTypes,
    this.rank,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig, Map<String, dynamic>>(diskConfig, (value) => value.toMap()),
      'machineTypes': ?machineTypes,
      'rank': ?rank,
    };
  }

  factory ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList(
      diskConfig: (() { final guardedValue = map['diskConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      machineTypes: (() { final guardedValue = map['machineTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rank: (() { final guardedValue = map['rank']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
