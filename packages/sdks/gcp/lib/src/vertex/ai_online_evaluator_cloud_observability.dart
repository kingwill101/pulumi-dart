// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_online_evaluator_cloud_observability_open_telemetry.dart';
import 'ai_online_evaluator_cloud_observability_session_scope.dart';
import 'ai_online_evaluator_cloud_observability_trace_scope.dart';

class AiOnlineEvaluatorCloudObservability {
  /// Optional log view that will be used to query logs. If empty, the
  /// project's default view (`projects/{{project_id}}`) will be used.
  final pulumi.Input<String?>? logView;
  /// Configuration for a data source following the OpenTelemetry
  /// convention. This is the convention that the data source follows.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorCloudObservabilityOpenTelemetry> openTelemetry;
  /// If chosen, the OnlineEvaluator will evaluate sessions matching the
  /// specified filter. A session is a group of traces with a common
  /// `gen_ai.conversation.id`. Exactly one of `traceScope` or
  /// `sessionScope` must be set.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorCloudObservabilitySessionScope?>? sessionScope;
  /// If chosen, the OnlineEvaluator will evaluate single traces matching
  /// the specified filter. Exactly one of `traceScope` or `sessionScope`
  /// must be set.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorCloudObservabilityTraceScope?>? traceScope;
  /// Optional trace view that will be used to query traces. If empty, the
  /// `_AllSpans` view from the `_Trace` US bucket will be used.
  final pulumi.Input<String?>? traceView;

  /// Creates a new [AiOnlineEvaluatorCloudObservability].
  /// [logView] Optional log view that will be used to query logs. If empty, the
  /// [openTelemetry] Configuration for a data source following the OpenTelemetry
  /// [sessionScope] If chosen, the OnlineEvaluator will evaluate sessions matching the
  /// [traceScope] If chosen, the OnlineEvaluator will evaluate single traces matching
  /// [traceView] Optional trace view that will be used to query traces. If empty, the
  const AiOnlineEvaluatorCloudObservability({
    this.logView,
    required this.openTelemetry,
    this.sessionScope,
    this.traceScope,
    this.traceView,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logView': ?logView,
      'openTelemetry': pulumi.Input.mapInputValue<AiOnlineEvaluatorCloudObservabilityOpenTelemetry, Map<String, dynamic>>(openTelemetry, (value) => value.toMap()),
      'sessionScope': ?pulumi.Input.mapOptionalInputValue<AiOnlineEvaluatorCloudObservabilitySessionScope, Map<String, dynamic>>(sessionScope, (value) => value.toMap()),
      'traceScope': ?pulumi.Input.mapOptionalInputValue<AiOnlineEvaluatorCloudObservabilityTraceScope, Map<String, dynamic>>(traceScope, (value) => value.toMap()),
      'traceView': ?traceView,
    };
  }

  factory AiOnlineEvaluatorCloudObservability.fromMap(Map<String, dynamic> map) {
    return AiOnlineEvaluatorCloudObservability(
      logView: (() { final guardedValue = map['logView']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openTelemetry: pulumi.Input.fromValue(AiOnlineEvaluatorCloudObservabilityOpenTelemetry.fromMap((map['openTelemetry']! as Map).cast<String, dynamic>())),
      sessionScope: (() { final guardedValue = map['sessionScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiOnlineEvaluatorCloudObservabilitySessionScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      traceScope: (() { final guardedValue = map['traceScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiOnlineEvaluatorCloudObservabilityTraceScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      traceView: (() { final guardedValue = map['traceView']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
