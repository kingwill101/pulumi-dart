// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_folder_orchestration_scope_selector.dart';

class V2PolicyOrchestratorForFolderOrchestrationScope {
  /// Selectors of the orchestration scope. There is a logical AND between each
  /// selector defined.
  /// When there is no explicit `ResourceHierarchySelector` selector specified,
  /// the scope is by default bounded to the parent of the policy orchestrator
  /// resource.
  /// Structure is documented below.
  final pulumi.Input<List<V2PolicyOrchestratorForFolderOrchestrationScopeSelector>?>? selectors;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestrationScope].
  /// [selectors] Selectors of the orchestration scope. There is a logical AND between each
  const V2PolicyOrchestratorForFolderOrchestrationScope({
    this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectors': ?pulumi.Input.mapOptionalInputValue<List<V2PolicyOrchestratorForFolderOrchestrationScopeSelector>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<V2PolicyOrchestratorForFolderOrchestrationScopeSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestrationScope.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestrationScope(
      selectors: (() { final guardedValue = map['selectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2PolicyOrchestratorForFolderOrchestrationScopeSelector>(guardedValue, (value) => V2PolicyOrchestratorForFolderOrchestrationScopeSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
