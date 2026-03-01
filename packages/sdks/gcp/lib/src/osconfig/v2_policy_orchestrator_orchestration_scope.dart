// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_orchestration_scope_selector.dart';

class V2PolicyOrchestratorOrchestrationScope {
  /// Optional. Selectors of the orchestration scope. There is a logical AND between each
  /// selector defined.
  /// When there is no explicit `ResourceHierarchySelector` selector specified,
  /// the scope is by default bounded to the parent of the policy orchestrator
  /// resource.
  /// Structure is documented below.
  final List<V2PolicyOrchestratorOrchestrationScopeSelector>? selectors;

  /// Creates a new [V2PolicyOrchestratorOrchestrationScope].
  /// [selectors] Optional. Selectors of the orchestration scope. There is a logical AND between each
  V2PolicyOrchestratorOrchestrationScope({
    this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectors': ?selectors == null ? null : pulumi.Input.encodeList<V2PolicyOrchestratorOrchestrationScopeSelector, Map<String, dynamic>>(selectors!, (value) => value.toMap()),
    };
  }

  factory V2PolicyOrchestratorOrchestrationScope.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestrationScope(
      selectors: map['selectors'] == null ? null : pulumi.Input.decodeList<V2PolicyOrchestratorOrchestrationScopeSelector>(map['selectors'], (value) => V2PolicyOrchestratorOrchestrationScopeSelector.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

