// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_folder_orchestration_state_current_iteration_state_error.dart';

class V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationState {
  /// (Output)
  /// The `Status` type defines a logical error model that is suitable for
  /// different programming environments, including REST APIs and RPC APIs. It is
  /// used by [gRPC](https://github.com/grpc). Each `Status` message contains
  /// three pieces of data: error code, error message, and error details.
  /// You can find out more about this error model and how to work with it in the
  /// [API Design Guide](https://cloud.google.com/apis/design/errors).
  /// Structure is documented below.
  final pulumi.Input<List<V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateError>>? errors;
  /// (Output)
  /// Number of orchestration actions which failed so far. For more details,
  /// query the Cloud Logs.
  final pulumi.Input<String>? failedActions;
  /// (Output)
  /// Finish time of the wave iteration.
  final pulumi.Input<String>? finishTime;
  /// (Output)
  /// Overall number of actions done by the orchestrator so far.
  final pulumi.Input<String>? performedActions;
  /// (Output)
  /// An estimated percentage of the progress. Number between 0 and 100.
  final pulumi.Input<double>? progress;
  /// (Output)
  /// Handle to the Progressive Rollouts API rollout resource, which contains
  /// detailed information about a particular orchestration iteration.
  final pulumi.Input<String>? rolloutResource;
  /// (Output)
  /// Start time of the wave iteration.
  final pulumi.Input<String>? startTime;
  /// State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// Allowed values:
  /// - `ACTIVE` - orchestrator is actively looking for actions to be taken.
  /// - `STOPPED` - orchestrator won't make any changes.
  /// Note: There might be more states added in the future. We use string here
  /// instead of an enum, to avoid the need of propagating new states to all the
  /// client code.
  final pulumi.Input<String>? state;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationState].
  /// [errors] (Output)
  /// [failedActions] (Output)
  /// [finishTime] (Output)
  /// [performedActions] (Output)
  /// [progress] (Output)
  /// [rolloutResource] (Output)
  /// [startTime] (Output)
  /// [state] State of the orchestrator. Can be updated to change orchestrator behaviour.
  V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationState({
    this.errors,
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
      'errors': ?pulumi.Input.mapOptionalInputValue<List<V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failedActions': ?failedActions,
      'finishTime': ?finishTime,
      'performedActions': ?performedActions,
      'progress': ?progress,
      'rolloutResource': ?rolloutResource,
      'startTime': ?startTime,
      'state': ?state,
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationState.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationState(
      errors: map['errors'] == null ? null : (pulumi.Input.decodeList<V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateError>(map['errors']!, (value) => V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateError.fromMap((value as Map).cast<String, dynamic>()))).input(),
      failedActions: map['failedActions'] == null ? null : (map['failedActions']! as String).input(),
      finishTime: map['finishTime'] == null ? null : (map['finishTime']! as String).input(),
      performedActions: map['performedActions'] == null ? null : (map['performedActions']! as String).input(),
      progress: map['progress'] == null ? null : (map['progress']! as double).input(),
      rolloutResource: map['rolloutResource'] == null ? null : (map['rolloutResource']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

