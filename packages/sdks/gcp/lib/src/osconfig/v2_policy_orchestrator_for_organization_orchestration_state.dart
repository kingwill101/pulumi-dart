// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_organization_orchestration_state_current_iteration_state.dart';
import 'v2_policy_orchestrator_for_organization_orchestration_state_previous_iteration_state.dart';

class V2PolicyOrchestratorForOrganizationOrchestrationState {
  /// (Output)
  /// Describes the state of a single iteration of the orchestrator.
  /// Structure is documented below.
  final pulumi.Input<List<V2PolicyOrchestratorForOrganizationOrchestrationStateCurrentIterationState>?>? currentIterationStates;
  /// Describes the state of a single iteration of the orchestrator.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationState?>? previousIterationState;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestrationState].
  /// [currentIterationStates] (Output)
  /// [previousIterationState] Describes the state of a single iteration of the orchestrator.
  const V2PolicyOrchestratorForOrganizationOrchestrationState({
    this.currentIterationStates,
    this.previousIterationState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentIterationStates': ?pulumi.Input.mapOptionalInputValue<List<V2PolicyOrchestratorForOrganizationOrchestrationStateCurrentIterationState>, List<Map<String, dynamic>>>(currentIterationStates, (value) => pulumi.Input.encodeList<V2PolicyOrchestratorForOrganizationOrchestrationStateCurrentIterationState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'previousIterationState': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationState, Map<String, dynamic>>(previousIterationState, (value) => value.toMap()),
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestrationState.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestrationState(
      currentIterationStates: (() { final guardedValue = map['currentIterationStates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2PolicyOrchestratorForOrganizationOrchestrationStateCurrentIterationState>(guardedValue, (value) => V2PolicyOrchestratorForOrganizationOrchestrationStateCurrentIterationState.fromMap((value as Map).cast<String, dynamic>()))); })(),
      previousIterationState: (() { final guardedValue = map['previousIterationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
