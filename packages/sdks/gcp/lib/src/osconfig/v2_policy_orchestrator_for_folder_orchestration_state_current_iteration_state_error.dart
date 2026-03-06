// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_folder_orchestration_state_current_iteration_state_error_detail.dart';

class V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateError {
  /// (Output)
  /// The status code, which should be an enum value of google.rpc.Code.
  final pulumi.Input<int>? code;
  /// (Output)
  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  /// Structure is documented below.
  final pulumi.Input<List<V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateErrorDetail>>? details;
  /// (Output)
  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  final pulumi.Input<String>? message;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateError].
  /// [code] (Output)
  /// [details] (Output)
  /// [message] (Output)
  const V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateError({
    this.code,
    this.details,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'details': ?pulumi.Input.mapOptionalInputValue<List<V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateErrorDetail>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateErrorDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': ?message,
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateError.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateError(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateErrorDetail>(guardedValue, (value) => V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationStateErrorDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

