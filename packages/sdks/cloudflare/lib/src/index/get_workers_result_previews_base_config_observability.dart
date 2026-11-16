// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_result_previews_base_config_observability_issues.dart';
import 'get_workers_result_previews_base_config_observability_logs.dart';
import 'get_workers_result_previews_base_config_observability_traces.dart';

class GetWorkersResultPreviewsBaseConfigObservability {
  /// Whether observability is enabled for the Worker.
  final pulumi.Input<bool> enabled;
  /// The sampling rate for observability. From 0 to 1 (1 = 100%, 0.1 = 10%).
  final pulumi.Input<double> headSamplingRate;
  /// Real-time Issues settings for the Worker.
  final pulumi.Input<GetWorkersResultPreviewsBaseConfigObservabilityIssues> issues;
  /// Log settings for the Worker.
  final pulumi.Input<GetWorkersResultPreviewsBaseConfigObservabilityLogs> logs;
  /// Whether query strings are removed from request URLs in logs and traces.
  final pulumi.Input<bool> redactQueryString;
  /// Trace settings for the Worker.
  final pulumi.Input<GetWorkersResultPreviewsBaseConfigObservabilityTraces> traces;

  /// Creates a new [GetWorkersResultPreviewsBaseConfigObservability].
  /// [enabled] Whether observability is enabled for the Worker.
  /// [headSamplingRate] The sampling rate for observability. From 0 to 1 (1 = 100%, 0.1 = 10%).
  /// [issues] Real-time Issues settings for the Worker.
  /// [logs] Log settings for the Worker.
  /// [redactQueryString] Whether query strings are removed from request URLs in logs and traces.
  /// [traces] Trace settings for the Worker.
  const GetWorkersResultPreviewsBaseConfigObservability({
    required this.enabled,
    required this.headSamplingRate,
    required this.issues,
    required this.logs,
    required this.redactQueryString,
    required this.traces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'headSamplingRate': headSamplingRate,
      'issues': pulumi.Input.mapInputValue<GetWorkersResultPreviewsBaseConfigObservabilityIssues, Map<String, dynamic>>(issues, (value) => value.toMap()),
      'logs': pulumi.Input.mapInputValue<GetWorkersResultPreviewsBaseConfigObservabilityLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'redactQueryString': redactQueryString,
      'traces': pulumi.Input.mapInputValue<GetWorkersResultPreviewsBaseConfigObservabilityTraces, Map<String, dynamic>>(traces, (value) => value.toMap()),
    };
  }

  factory GetWorkersResultPreviewsBaseConfigObservability.fromMap(Map<String, dynamic> map) {
    return GetWorkersResultPreviewsBaseConfigObservability(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      headSamplingRate: pulumi.Input.fromValue((map['headSamplingRate'] as num).toDouble()),
      issues: pulumi.Input.fromValue(GetWorkersResultPreviewsBaseConfigObservabilityIssues.fromMap((map['issues']! as Map).cast<String, dynamic>())),
      logs: pulumi.Input.fromValue(GetWorkersResultPreviewsBaseConfigObservabilityLogs.fromMap((map['logs']! as Map).cast<String, dynamic>())),
      redactQueryString: pulumi.Input.fromValue(map['redactQueryString'] as bool),
      traces: pulumi.Input.fromValue(GetWorkersResultPreviewsBaseConfigObservabilityTraces.fromMap((map['traces']! as Map).cast<String, dynamic>())),
    );
  }
}
