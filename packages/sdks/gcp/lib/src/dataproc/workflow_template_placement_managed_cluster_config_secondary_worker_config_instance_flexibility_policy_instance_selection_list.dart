// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_placement_managed_cluster_config_secondary_worker_config_instance_flexibility_policy_instance_selection_list_disk_config.dart';

class WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList {
  /// Disk option for the instance group. Structure is documented above.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig?>? diskConfig;
  /// Full machine-type names, e.g. `n1-standard-16`.
  final pulumi.Input<List<String>?>? machineTypes;
  /// Preference of this instance selection. Lower number means higher preference. Dataproc will first try to create a VM based on the machine-type with priority rank and fallback to next rank based on availability. Machine types and instance selections with the same priority have the same preference.
  final pulumi.Input<int?>? rank;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList].
  /// [diskConfig] Disk option for the instance group. Structure is documented above.
  /// [machineTypes] Full machine-type names, e.g. `n1-standard-16`.
  /// [rank] Preference of this instance selection. Lower number means higher preference. Dataproc will first try to create a VM based on the machine-type with priority rank and fallback to next rank based on availability. Machine types and instance selections with the same priority have the same preference.
  const WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList({
    this.diskConfig,
    this.machineTypes,
    this.rank,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig, Map<String, dynamic>>(diskConfig, (value) => value.toMap()),
      'machineTypes': ?machineTypes,
      'rank': ?rank,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList(
      diskConfig: (() { final guardedValue = map['diskConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      machineTypes: (() { final guardedValue = map['machineTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rank: (() { final guardedValue = map['rank']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
