// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_placement_managed_cluster_config_worker_config_instance_flexibility_policy_instance_selection_list.dart';
import 'workflow_template_placement_managed_cluster_config_worker_config_instance_flexibility_policy_instance_selection_result.dart';

class WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicy {
  /// Output only. A map of instance names to their machine types.
  final pulumi.Input<Map<String, String>?>? instanceMachineTypes;
  /// List of instance selection options that the group will use when creating new VMs. Structure is documented below.
  final pulumi.Input<List<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>?>? instanceSelectionLists;
  /// Output only. A list of instance selection results that were successfully allocated. Structure is documented below.
  final pulumi.Input<List<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>?>? instanceSelectionResults;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicy].
  /// [instanceMachineTypes] Output only. A map of instance names to their machine types.
  /// [instanceSelectionLists] List of instance selection options that the group will use when creating new VMs. Structure is documented below.
  /// [instanceSelectionResults] Output only. A list of instance selection results that were successfully allocated. Structure is documented below.
  const WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicy({
    this.instanceMachineTypes,
    this.instanceSelectionLists,
    this.instanceSelectionResults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceMachineTypes': ?instanceMachineTypes,
      'instanceSelectionLists': ?pulumi.Input.mapOptionalInputValue<List<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>, List<Map<String, dynamic>>>(instanceSelectionLists, (value) => pulumi.Input.encodeList<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceSelectionResults': ?pulumi.Input.mapOptionalInputValue<List<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>, List<Map<String, dynamic>>>(instanceSelectionResults, (value) => pulumi.Input.encodeList<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicy.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicy(
      instanceMachineTypes: (() { final guardedValue = map['instanceMachineTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      instanceSelectionLists: (() { final guardedValue = map['instanceSelectionLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>(guardedValue, (value) => WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceSelectionResults: (() { final guardedValue = map['instanceSelectionResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>(guardedValue, (value) => WorkflowTemplatePlacementManagedClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
