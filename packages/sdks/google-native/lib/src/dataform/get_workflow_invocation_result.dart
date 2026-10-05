// ignore_for_file: unused_element, unnecessary_cast

import 'interval_response.dart';
import 'invocation_config_response.dart';

/// Result data returned by getWorkflowInvocation.
class GetWorkflowInvocationResult {
  /// Immutable. The name of the compilation result to use for this invocation. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  final String? compilationResult;
  /// Immutable. If left unset, a default InvocationConfig will be used.
  final InvocationConfigResponse? invocationConfig;
  /// This workflow invocation's timing details.
  final IntervalResponse? invocationTiming;
  /// The workflow invocation's name.
  final String? name;
  /// The resolved compilation result that was used to create this invocation. Will be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  final String? resolvedCompilationResult;
  /// This workflow invocation's current state.
  final String? state;
  /// Immutable. The name of the workflow config to invoke. Must be in the format `projects/*/locations/*/repositories/*/workflowConfigs/*`.
  final String? workflowConfig;

  /// Creates a new [GetWorkflowInvocationResult].
  /// [compilationResult] Immutable. The name of the compilation result to use for this invocation. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  /// [invocationConfig] Immutable. If left unset, a default InvocationConfig will be used.
  /// [invocationTiming] This workflow invocation's timing details.
  /// [name] The workflow invocation's name.
  /// [resolvedCompilationResult] The resolved compilation result that was used to create this invocation. Will be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  /// [state] This workflow invocation's current state.
  /// [workflowConfig] Immutable. The name of the workflow config to invoke. Must be in the format `projects/*/locations/*/repositories/*/workflowConfigs/*`.
  const GetWorkflowInvocationResult({
    this.compilationResult,
    this.invocationConfig,
    this.invocationTiming,
    this.name,
    this.resolvedCompilationResult,
    this.state,
    this.workflowConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compilationResult': ?compilationResult,
      'invocationConfig': ?invocationConfig?.toMap(),
      'invocationTiming': ?invocationTiming?.toMap(),
      'name': ?name,
      'resolvedCompilationResult': ?resolvedCompilationResult,
      'state': ?state,
      'workflowConfig': ?workflowConfig,
    };
  }

  factory GetWorkflowInvocationResult.fromMap(Map<String, dynamic> map) {
    return GetWorkflowInvocationResult(
      compilationResult: (() { final guardedValue = map['compilationResult']; if (guardedValue == null) return null; return guardedValue as String; })(),
      invocationConfig: (() { final guardedValue = map['invocationConfig']; if (guardedValue == null) return null; return InvocationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      invocationTiming: (() { final guardedValue = map['invocationTiming']; if (guardedValue == null) return null; return IntervalResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resolvedCompilationResult: (() { final guardedValue = map['resolvedCompilationResult']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workflowConfig: (() { final guardedValue = map['workflowConfig']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
