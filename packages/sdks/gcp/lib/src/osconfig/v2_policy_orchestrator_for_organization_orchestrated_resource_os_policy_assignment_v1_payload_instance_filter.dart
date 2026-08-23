// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter_exclusion_label.dart';
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter_inclusion_label.dart';
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter_inventory.dart';

class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter {
  /// Target all VMs in the project. If true, no other criteria is
  /// permitted.
  final pulumi.Input<bool>? all;
  /// List of label sets used for VM exclusion.
  /// If the list has more than one label set, the VM is excluded if any
  /// of the label sets are applicable for the VM.
  /// Structure is documented below.
  final pulumi.Input<List<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabel>>? exclusionLabels;
  /// List of label sets used for VM inclusion.
  /// If the list has more than one `LabelSet`, the VM is included if any
  /// of the label sets are applicable for the VM.
  /// Structure is documented below.
  final pulumi.Input<List<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel>>? inclusionLabels;
  /// List of inventories to select VMs.
  /// A VM is selected if its inventory data matches at least one of the
  /// following inventories.
  /// Structure is documented below.
  final pulumi.Input<List<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventory>>? inventories;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter].
  /// [all] Target all VMs in the project. If true, no other criteria is
  /// [exclusionLabels] List of label sets used for VM exclusion.
  /// [inclusionLabels] List of label sets used for VM inclusion.
  /// [inventories] List of inventories to select VMs.
  const V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'exclusionLabels': ?pulumi.Input.mapOptionalInputValue<List<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabel>, List<Map<String, dynamic>>>(exclusionLabels, (value) => pulumi.Input.encodeList<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inclusionLabels': ?pulumi.Input.mapOptionalInputValue<List<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel>, List<Map<String, dynamic>>>(inclusionLabels, (value) => pulumi.Input.encodeList<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inventories': ?pulumi.Input.mapOptionalInputValue<List<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventory>, List<Map<String, dynamic>>>(inventories, (value) => pulumi.Input.encodeList<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventory, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exclusionLabels: (() { final guardedValue = map['exclusionLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabel>(guardedValue, (value) => V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inclusionLabels: (() { final guardedValue = map['inclusionLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel>(guardedValue, (value) => V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inventories: (() { final guardedValue = map['inventories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventory>(guardedValue, (value) => V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventory.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
