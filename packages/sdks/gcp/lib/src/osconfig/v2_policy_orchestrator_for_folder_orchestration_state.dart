// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_folder_orchestration_state_current_iteration_state.dart';
import 'v2_policy_orchestrator_for_folder_orchestration_state_previous_iteration_state.dart';

class V2PolicyOrchestratorForFolderOrchestrationState {
  /// (Output)
  /// Describes the state of a single iteration of the orchestrator.
  /// Structure is documented below.
  final pulumi.Input<List<V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationState>>? currentIterationStates;
  /// (Output)
  /// Describes the state of a single iteration of the orchestrator.
  /// Structure is documented below.
  final pulumi.Input<List<V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationState>>? previousIterationStates;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestrationState].
  /// [currentIterationStates] (Output)
  /// [previousIterationStates] (Output)
  V2PolicyOrchestratorForFolderOrchestrationState({
    this.currentIterationStates,
    this.previousIterationStates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentIterationStates': ?pulumi.Input.mapOptionalInputValue<List<V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationState>, List<Map<String, dynamic>>>(currentIterationStates, (value) => pulumi.Input.encodeList<V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'previousIterationStates': ?pulumi.Input.mapOptionalInputValue<List<V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationState>, List<Map<String, dynamic>>>(previousIterationStates, (value) => pulumi.Input.encodeList<V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationState, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestrationState.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestrationState(
      currentIterationStates: map['currentIterationStates'] == null ? null : (pulumi.Input.decodeList<V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationState>(map['currentIterationStates']!, (value) => V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationState.fromMap((value as Map).cast<String, dynamic>()))).input(),
      previousIterationStates: map['previousIterationStates'] == null ? null : (pulumi.Input.decodeList<V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationState>(map['previousIterationStates']!, (value) => V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationState.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

