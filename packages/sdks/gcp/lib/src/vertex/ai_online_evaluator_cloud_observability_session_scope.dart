// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_online_evaluator_cloud_observability_session_scope_filter.dart';
import 'ai_online_evaluator_cloud_observability_session_scope_inactivity_trigger.dart';

class AiOnlineEvaluatorCloudObservabilitySessionScope {
  /// A list of predicates to filter sessions. Multiple predicates are
  /// combined using AND. The maximum number of predicates is 10.
  /// Structure is documented below.
  final pulumi.Input<List<AiOnlineEvaluatorCloudObservabilitySessionScopeFilter>?>? filters;
  /// Session is considered ready for evaluation when there are no new
  /// traces for a specified period of inactivity.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorCloudObservabilitySessionScopeInactivityTrigger?>? inactivityTrigger;

  /// Creates a new [AiOnlineEvaluatorCloudObservabilitySessionScope].
  /// [filters] A list of predicates to filter sessions. Multiple predicates are
  /// [inactivityTrigger] Session is considered ready for evaluation when there are no new
  const AiOnlineEvaluatorCloudObservabilitySessionScope({
    this.filters,
    this.inactivityTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<AiOnlineEvaluatorCloudObservabilitySessionScopeFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<AiOnlineEvaluatorCloudObservabilitySessionScopeFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inactivityTrigger': ?pulumi.Input.mapOptionalInputValue<AiOnlineEvaluatorCloudObservabilitySessionScopeInactivityTrigger, Map<String, dynamic>>(inactivityTrigger, (value) => value.toMap()),
    };
  }

  factory AiOnlineEvaluatorCloudObservabilitySessionScope.fromMap(Map<String, dynamic> map) {
    return AiOnlineEvaluatorCloudObservabilitySessionScope(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiOnlineEvaluatorCloudObservabilitySessionScopeFilter>(guardedValue, (value) => AiOnlineEvaluatorCloudObservabilitySessionScopeFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inactivityTrigger: (() { final guardedValue = map['inactivityTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiOnlineEvaluatorCloudObservabilitySessionScopeInactivityTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
