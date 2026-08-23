// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_orchestration_scope_selector_location_selector.dart';
import 'v2_policy_orchestrator_orchestration_scope_selector_resource_hierarchy_selector.dart';

class V2PolicyOrchestratorOrchestrationScopeSelector {
  /// Selector containing locations in scope.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestrationScopeSelectorLocationSelector>? locationSelector;
  /// Selector containing Cloud Resource Manager resource hierarchy nodes.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestrationScopeSelectorResourceHierarchySelector>? resourceHierarchySelector;

  /// Creates a new [V2PolicyOrchestratorOrchestrationScopeSelector].
  /// [locationSelector] Selector containing locations in scope.
  /// [resourceHierarchySelector] Selector containing Cloud Resource Manager resource hierarchy nodes.
  const V2PolicyOrchestratorOrchestrationScopeSelector({
    this.locationSelector,
    this.resourceHierarchySelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationSelector': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestrationScopeSelectorLocationSelector, Map<String, dynamic>>(locationSelector, (value) => value.toMap()),
      'resourceHierarchySelector': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestrationScopeSelectorResourceHierarchySelector, Map<String, dynamic>>(resourceHierarchySelector, (value) => value.toMap()),
    };
  }

  factory V2PolicyOrchestratorOrchestrationScopeSelector.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestrationScopeSelector(
      locationSelector: (() { final guardedValue = map['locationSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorOrchestrationScopeSelectorLocationSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceHierarchySelector: (() { final guardedValue = map['resourceHierarchySelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorOrchestrationScopeSelectorResourceHierarchySelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
