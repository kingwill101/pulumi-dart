// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_online_evaluator_cloud_observability_trace_scope_filter.dart';

class AiOnlineEvaluatorCloudObservabilityTraceScope {
  /// A list of predicates to filter traces. Multiple predicates are
  /// combined using AND. The maximum number of predicates is 10.
  /// Structure is documented below.
  final pulumi.Input<List<AiOnlineEvaluatorCloudObservabilityTraceScopeFilter>?>? filters;

  /// Creates a new [AiOnlineEvaluatorCloudObservabilityTraceScope].
  /// [filters] A list of predicates to filter traces. Multiple predicates are
  const AiOnlineEvaluatorCloudObservabilityTraceScope({
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<AiOnlineEvaluatorCloudObservabilityTraceScopeFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<AiOnlineEvaluatorCloudObservabilityTraceScopeFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiOnlineEvaluatorCloudObservabilityTraceScope.fromMap(Map<String, dynamic> map) {
    return AiOnlineEvaluatorCloudObservabilityTraceScope(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiOnlineEvaluatorCloudObservabilityTraceScopeFilter>(guardedValue, (value) => AiOnlineEvaluatorCloudObservabilityTraceScopeFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
