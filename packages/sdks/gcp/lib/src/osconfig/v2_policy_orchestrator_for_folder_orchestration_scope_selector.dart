// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_folder_orchestration_scope_selector_location_selector.dart';
import 'v2_policy_orchestrator_for_folder_orchestration_scope_selector_resource_hierarchy_selector.dart';

class V2PolicyOrchestratorForFolderOrchestrationScopeSelector {
  /// Selector containing locations in scope.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelector>? locationSelector;
  /// Selector containing Cloud Resource Manager resource hierarchy nodes.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForFolderOrchestrationScopeSelectorResourceHierarchySelector>? resourceHierarchySelector;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestrationScopeSelector].
  /// [locationSelector] Selector containing locations in scope.
  /// [resourceHierarchySelector] Selector containing Cloud Resource Manager resource hierarchy nodes.
  V2PolicyOrchestratorForFolderOrchestrationScopeSelector({
    this.locationSelector,
    this.resourceHierarchySelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationSelector': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelector, Map<String, dynamic>>(locationSelector, (value) => value.toMap()),
      'resourceHierarchySelector': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForFolderOrchestrationScopeSelectorResourceHierarchySelector, Map<String, dynamic>>(resourceHierarchySelector, (value) => value.toMap()),
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestrationScopeSelector.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestrationScopeSelector(
      locationSelector: map['locationSelector'] == null ? null : (V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelector.fromMap((map['locationSelector'] as Map).cast<String, dynamic>())).input(),
      resourceHierarchySelector: map['resourceHierarchySelector'] == null ? null : (V2PolicyOrchestratorForFolderOrchestrationScopeSelectorResourceHierarchySelector.fromMap((map['resourceHierarchySelector'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

