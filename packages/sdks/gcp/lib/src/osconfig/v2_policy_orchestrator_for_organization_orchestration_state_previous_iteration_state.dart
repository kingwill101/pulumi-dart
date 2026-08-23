// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_organization_orchestration_state_previous_iteration_state_error.dart';

class V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationState {
  /// The `Status` type defines a logical error model that is suitable for
  /// different programming environments, including REST APIs and RPC APIs. It is
  /// used by [gRPC](https://github.com/grpc). Each `Status` message contains
  /// three pieces of data: error code, error message, and error details.
  /// You can find out more about this error model and how to work with it in the
  /// [API Design Guide](https://cloud.google.com/apis/design/errors).
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateError>? error;
  /// (Output)
  /// Output only. Number of orchestration actions which failed so far. For more details,
  /// query the Cloud Logs.
  final pulumi.Input<String>? failedActions;
  /// (Output)
  /// Output only. Finish time of the wave iteration.
  final pulumi.Input<String>? finishTime;
  /// (Output)
  /// Output only. Overall number of actions done by the orchestrator so far.
  final pulumi.Input<String>? performedActions;
  /// (Output)
  /// Output only. An estimated percentage of the progress. Number between 0 and 100.
  final pulumi.Input<double>? progress;
  /// (Output)
  /// Output only. Handle to the Progressive Rollouts API rollout resource, which contains
  /// detailed information about a particular orchestration iteration.
  final pulumi.Input<String>? rolloutResource;
  /// (Output)
  /// Output only. Start time of the wave iteration.
  final pulumi.Input<String>? startTime;
  /// Optional. State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// Allowed values:
  /// - `ACTIVE` - orchestrator is actively looking for actions to be taken.
  /// - `STOPPED` - orchestrator won't make any changes.
  /// Note: There might be more states added in the future. We use string here
  /// instead of an enum, to avoid the need of propagating new states to all the
  /// client code.
  final pulumi.Input<String>? state;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationState].
  /// [error] The `Status` type defines a logical error model that is suitable for
  /// [failedActions] (Output)
  /// [finishTime] (Output)
  /// [performedActions] (Output)
  /// [progress] (Output)
  /// [rolloutResource] (Output)
  /// [startTime] (Output)
  /// [state] Optional. State of the orchestrator. Can be updated to change orchestrator behaviour.
  const V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationState({
    this.error,
    this.failedActions,
    this.finishTime,
    this.performedActions,
    this.progress,
    this.rolloutResource,
    this.startTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateError, Map<String, dynamic>>(error, (value) => value.toMap()),
      'failedActions': ?failedActions,
      'finishTime': ?finishTime,
      'performedActions': ?performedActions,
      'progress': ?progress,
      'rolloutResource': ?rolloutResource,
      'startTime': ?startTime,
      'state': ?state,
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationState.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationState(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateError.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failedActions: (() { final guardedValue = map['failedActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finishTime: (() { final guardedValue = map['finishTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performedActions: (() { final guardedValue = map['performedActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      progress: (() { final guardedValue = map['progress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      rolloutResource: (() { final guardedValue = map['rolloutResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
