// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_placement_managed_cluster_config_worker_config_instance_flexibility_policy_instance_selection_list_disk_config.dart';

class WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList {
  /// Disk option for the instance group. Structure is documented above.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig?>? diskConfig;
  /// Full machine-type names, e.g. `n1-standard-16`.
  final pulumi.Input<List<String>?>? machineTypes;
  /// Preference of this instance selection. Lower number means higher preference. Dataproc will first try to create a VM based on the machine-type with priority rank and fallback to next rank based on availability. Machine types and instance selections with the same priority have the same preference.
  final pulumi.Input<int?>? rank;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList].
  /// [diskConfig] Disk option for the instance group. Structure is documented above.
  /// [machineTypes] Full machine-type names, e.g. `n1-standard-16`.
  /// [rank] Preference of this instance selection. Lower number means higher preference. Dataproc will first try to create a VM based on the machine-type with priority rank and fallback to next rank based on availability. Machine types and instance selections with the same priority have the same preference.
  const WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList({
    this.diskConfig,
    this.machineTypes,
    this.rank,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig, Map<String, dynamic>>(diskConfig, (value) => value.toMap()),
      'machineTypes': ?machineTypes,
      'rank': ?rank,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList(
      diskConfig: (() { final guardedValue = map['diskConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      machineTypes: (() { final guardedValue = map['machineTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rank: (() { final guardedValue = map['rank']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
