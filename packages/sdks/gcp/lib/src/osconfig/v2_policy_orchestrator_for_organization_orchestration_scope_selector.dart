// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_organization_orchestration_scope_selector_location_selector.dart';
import 'v2_policy_orchestrator_for_organization_orchestration_scope_selector_resource_hierarchy_selector.dart';

class V2PolicyOrchestratorForOrganizationOrchestrationScopeSelector {
  /// Selector containing locations in scope.
  /// Structure is documented below.
  final pulumi.Input<
    V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorLocationSelector
  >?
  locationSelector;

  /// Selector containing Cloud Resource Manager resource hierarchy nodes.
  /// Structure is documented below.
  final pulumi.Input<
    V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorResourceHierarchySelector
  >?
  resourceHierarchySelector;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestrationScopeSelector].
  /// [locationSelector] Selector containing locations in scope.
  /// [resourceHierarchySelector] Selector containing Cloud Resource Manager resource hierarchy nodes.
  V2PolicyOrchestratorForOrganizationOrchestrationScopeSelector({
    this.locationSelector,
    this.resourceHierarchySelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationSelector':
          ?pulumi.Input.mapOptionalInputValue<
            V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorLocationSelector,
            Map<String, dynamic>
          >(locationSelector, (value) => value.toMap()),
      'resourceHierarchySelector':
          ?pulumi.Input.mapOptionalInputValue<
            V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorResourceHierarchySelector,
            Map<String, dynamic>
          >(resourceHierarchySelector, (value) => value.toMap()),
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestrationScopeSelector.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorForOrganizationOrchestrationScopeSelector(
      locationSelector: (() {
        final guardedValue = map['locationSelector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorLocationSelector.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceHierarchySelector: (() {
        final guardedValue = map['resourceHierarchySelector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorResourceHierarchySelector.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
