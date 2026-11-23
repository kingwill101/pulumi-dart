// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_online_evaluator_cloud_observability_session_scope_filter_duration.dart';
import 'ai_online_evaluator_cloud_observability_session_scope_filter_model_call_errors.dart';
import 'ai_online_evaluator_cloud_observability_session_scope_filter_model_calls.dart';
import 'ai_online_evaluator_cloud_observability_session_scope_filter_tool_call_errors.dart';
import 'ai_online_evaluator_cloud_observability_session_scope_filter_tool_calls.dart';
import 'ai_online_evaluator_cloud_observability_session_scope_filter_total_token_usage.dart';
import 'ai_online_evaluator_cloud_observability_session_scope_filter_user_turns.dart';

class AiOnlineEvaluatorCloudObservabilitySessionScopeFilter {
  /// Filter on the duration of a session (in seconds).
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorCloudObservabilitySessionScopeFilterDuration?>? duration;
  /// Filter on the number of LLM call errors within a session.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorCloudObservabilitySessionScopeFilterModelCallErrors?>? modelCallErrors;
  /// Filter on the number of underlying LLM calls within a session.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorCloudObservabilitySessionScopeFilterModelCalls?>? modelCalls;
  /// Filter on the number of tool call errors within a session.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorCloudObservabilitySessionScopeFilterToolCallErrors?>? toolCallErrors;
  /// Filter on the number of underlying tool calls within a session.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorCloudObservabilitySessionScopeFilterToolCalls?>? toolCalls;
  /// Filter on the total token usage within a session.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorCloudObservabilitySessionScopeFilterTotalTokenUsage?>? totalTokenUsage;
  /// Filter on the number of user turns within a session.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorCloudObservabilitySessionScopeFilterUserTurns?>? userTurns;

  /// Creates a new [AiOnlineEvaluatorCloudObservabilitySessionScopeFilter].
  /// [duration] Filter on the duration of a session (in seconds).
  /// [modelCallErrors] Filter on the number of LLM call errors within a session.
  /// [modelCalls] Filter on the number of underlying LLM calls within a session.
  /// [toolCallErrors] Filter on the number of tool call errors within a session.
  /// [toolCalls] Filter on the number of underlying tool calls within a session.
  /// [totalTokenUsage] Filter on the total token usage within a session.
  /// [userTurns] Filter on the number of user turns within a session.
  const AiOnlineEvaluatorCloudObservabilitySessionScopeFilter({
    this.duration,
    this.modelCallErrors,
    this.modelCalls,
    this.toolCallErrors,
    this.toolCalls,
    this.totalTokenUsage,
    this.userTurns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?pulumi.Input.mapOptionalInputValue<AiOnlineEvaluatorCloudObservabilitySessionScopeFilterDuration, Map<String, dynamic>>(duration, (value) => value.toMap()),
      'modelCallErrors': ?pulumi.Input.mapOptionalInputValue<AiOnlineEvaluatorCloudObservabilitySessionScopeFilterModelCallErrors, Map<String, dynamic>>(modelCallErrors, (value) => value.toMap()),
      'modelCalls': ?pulumi.Input.mapOptionalInputValue<AiOnlineEvaluatorCloudObservabilitySessionScopeFilterModelCalls, Map<String, dynamic>>(modelCalls, (value) => value.toMap()),
      'toolCallErrors': ?pulumi.Input.mapOptionalInputValue<AiOnlineEvaluatorCloudObservabilitySessionScopeFilterToolCallErrors, Map<String, dynamic>>(toolCallErrors, (value) => value.toMap()),
      'toolCalls': ?pulumi.Input.mapOptionalInputValue<AiOnlineEvaluatorCloudObservabilitySessionScopeFilterToolCalls, Map<String, dynamic>>(toolCalls, (value) => value.toMap()),
      'totalTokenUsage': ?pulumi.Input.mapOptionalInputValue<AiOnlineEvaluatorCloudObservabilitySessionScopeFilterTotalTokenUsage, Map<String, dynamic>>(totalTokenUsage, (value) => value.toMap()),
      'userTurns': ?pulumi.Input.mapOptionalInputValue<AiOnlineEvaluatorCloudObservabilitySessionScopeFilterUserTurns, Map<String, dynamic>>(userTurns, (value) => value.toMap()),
    };
  }

  factory AiOnlineEvaluatorCloudObservabilitySessionScopeFilter.fromMap(Map<String, dynamic> map) {
    return AiOnlineEvaluatorCloudObservabilitySessionScopeFilter(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiOnlineEvaluatorCloudObservabilitySessionScopeFilterDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modelCallErrors: (() { final guardedValue = map['modelCallErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiOnlineEvaluatorCloudObservabilitySessionScopeFilterModelCallErrors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modelCalls: (() { final guardedValue = map['modelCalls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiOnlineEvaluatorCloudObservabilitySessionScopeFilterModelCalls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolCallErrors: (() { final guardedValue = map['toolCallErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiOnlineEvaluatorCloudObservabilitySessionScopeFilterToolCallErrors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolCalls: (() { final guardedValue = map['toolCalls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiOnlineEvaluatorCloudObservabilitySessionScopeFilterToolCalls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      totalTokenUsage: (() { final guardedValue = map['totalTokenUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiOnlineEvaluatorCloudObservabilitySessionScopeFilterTotalTokenUsage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userTurns: (() { final guardedValue = map['userTurns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiOnlineEvaluatorCloudObservabilitySessionScopeFilterUserTurns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
