// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_placement_managed_cluster_config_secondary_worker_config_instance_flexibility_policy_instance_selection_list.dart';
import 'workflow_template_placement_managed_cluster_config_secondary_worker_config_instance_flexibility_policy_instance_selection_result.dart';
import 'workflow_template_placement_managed_cluster_config_secondary_worker_config_instance_flexibility_policy_provisioning_model_mix.dart';

class WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicy {
  /// Output only. A map of instance names to their machine types.
  final pulumi.Input<Map<String, String>?>? instanceMachineTypes;
  /// List of instance selection options that the group will use when creating new VMs. Structure is documented below.
  final pulumi.Input<List<WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>?>? instanceSelectionLists;
  /// Output only. A list of instance selection results that were successfully allocated. Structure is documented below.
  final pulumi.Input<List<WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>?>? instanceSelectionResults;
  /// Strategy for provisioning model mix for secondary worker instances. Supported only for `secondaryWorkerConfig`. Structure is documented below.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix?>? provisioningModelMix;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicy].
  /// [instanceMachineTypes] Output only. A map of instance names to their machine types.
  /// [instanceSelectionLists] List of instance selection options that the group will use when creating new VMs. Structure is documented below.
  /// [instanceSelectionResults] Output only. A list of instance selection results that were successfully allocated. Structure is documented below.
  /// [provisioningModelMix] Strategy for provisioning model mix for secondary worker instances. Supported only for `secondaryWorkerConfig`. Structure is documented below.
  const WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicy({
    this.instanceMachineTypes,
    this.instanceSelectionLists,
    this.instanceSelectionResults,
    this.provisioningModelMix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceMachineTypes': ?instanceMachineTypes,
      'instanceSelectionLists': ?pulumi.Input.mapOptionalInputValue<List<WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>, List<Map<String, dynamic>>>(instanceSelectionLists, (value) => pulumi.Input.encodeList<WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceSelectionResults': ?pulumi.Input.mapOptionalInputValue<List<WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>, List<Map<String, dynamic>>>(instanceSelectionResults, (value) => pulumi.Input.encodeList<WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningModelMix': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix, Map<String, dynamic>>(provisioningModelMix, (value) => value.toMap()),
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicy.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicy(
      instanceMachineTypes: (() { final guardedValue = map['instanceMachineTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      instanceSelectionLists: (() { final guardedValue = map['instanceSelectionLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>(guardedValue, (value) => WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceSelectionResults: (() { final guardedValue = map['instanceSelectionResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>(guardedValue, (value) => WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningModelMix: (() { final guardedValue = map['provisioningModelMix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
