// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_online_evaluator_cloud_observability_trace_scope_filter_duration.dart';
import 'ai_online_evaluator_cloud_observability_trace_scope_filter_total_token_usage.dart';

class AiOnlineEvaluatorCloudObservabilityTraceScopeFilter {
  /// Filter on the duration of a session (in seconds).
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorCloudObservabilityTraceScopeFilterDuration?>? duration;
  /// Filter on the total token usage within a session.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorCloudObservabilityTraceScopeFilterTotalTokenUsage?>? totalTokenUsage;

  /// Creates a new [AiOnlineEvaluatorCloudObservabilityTraceScopeFilter].
  /// [duration] Filter on the duration of a session (in seconds).
  /// [totalTokenUsage] Filter on the total token usage within a session.
  const AiOnlineEvaluatorCloudObservabilityTraceScopeFilter({
    this.duration,
    this.totalTokenUsage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?pulumi.Input.mapOptionalInputValue<AiOnlineEvaluatorCloudObservabilityTraceScopeFilterDuration, Map<String, dynamic>>(duration, (value) => value.toMap()),
      'totalTokenUsage': ?pulumi.Input.mapOptionalInputValue<AiOnlineEvaluatorCloudObservabilityTraceScopeFilterTotalTokenUsage, Map<String, dynamic>>(totalTokenUsage, (value) => value.toMap()),
    };
  }

  factory AiOnlineEvaluatorCloudObservabilityTraceScopeFilter.fromMap(Map<String, dynamic> map) {
    return AiOnlineEvaluatorCloudObservabilityTraceScopeFilter(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiOnlineEvaluatorCloudObservabilityTraceScopeFilterDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      totalTokenUsage: (() { final guardedValue = map['totalTokenUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiOnlineEvaluatorCloudObservabilityTraceScopeFilterTotalTokenUsage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
