// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_organization_orchestration_scope_selector.dart';

class V2PolicyOrchestratorForOrganizationOrchestrationScope {
  /// Optional. Selectors of the orchestration scope. There is a logical AND between each
  /// selector defined.
  /// When there is no explicit `ResourceHierarchySelector` selector specified,
  /// the scope is by default bounded to the parent of the policy orchestrator
  /// resource.
  /// Structure is documented below.
  final pulumi.Input<List<V2PolicyOrchestratorForOrganizationOrchestrationScopeSelector>>? selectors;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestrationScope].
  /// [selectors] Optional. Selectors of the orchestration scope. There is a logical AND between each
  V2PolicyOrchestratorForOrganizationOrchestrationScope({
    this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectors': ?pulumi.Input.mapOptionalInputValue<List<V2PolicyOrchestratorForOrganizationOrchestrationScopeSelector>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<V2PolicyOrchestratorForOrganizationOrchestrationScopeSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestrationScope.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestrationScope(
      selectors: map['selectors'] == null ? null : (pulumi.Input.decodeList<V2PolicyOrchestratorForOrganizationOrchestrationScopeSelector>(map['selectors'], (value) => V2PolicyOrchestratorForOrganizationOrchestrationScopeSelector.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

