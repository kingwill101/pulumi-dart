// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_previews_base_config_observability_issues.dart';
import 'worker_previews_base_config_observability_logs.dart';
import 'worker_previews_base_config_observability_traces.dart';

class WorkerPreviewsBaseConfigObservability {
  /// Whether observability is enabled for the Worker.
  final pulumi.Input<bool?>? enabled;
  /// The sampling rate for observability. From 0 to 1 (1 = 100%, 0.1 = 10%).
  final pulumi.Input<double?>? headSamplingRate;
  /// Real-time Issues settings for the Worker.
  final pulumi.Input<WorkerPreviewsBaseConfigObservabilityIssues?>? issues;
  /// Log settings for the Worker.
  final pulumi.Input<WorkerPreviewsBaseConfigObservabilityLogs?>? logs;
  /// Whether query strings are removed from request URLs in logs and traces.
  final pulumi.Input<bool?>? redactQueryString;
  /// Trace settings for the Worker.
  final pulumi.Input<WorkerPreviewsBaseConfigObservabilityTraces?>? traces;

  /// Creates a new [WorkerPreviewsBaseConfigObservability].
  /// [enabled] Whether observability is enabled for the Worker.
  /// [headSamplingRate] The sampling rate for observability. From 0 to 1 (1 = 100%, 0.1 = 10%).
  /// [issues] Real-time Issues settings for the Worker.
  /// [logs] Log settings for the Worker.
  /// [redactQueryString] Whether query strings are removed from request URLs in logs and traces.
  /// [traces] Trace settings for the Worker.
  const WorkerPreviewsBaseConfigObservability({
    this.enabled,
    this.headSamplingRate,
    this.issues,
    this.logs,
    this.redactQueryString,
    this.traces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'headSamplingRate': ?headSamplingRate,
      'issues': ?pulumi.Input.mapOptionalInputValue<WorkerPreviewsBaseConfigObservabilityIssues, Map<String, dynamic>>(issues, (value) => value.toMap()),
      'logs': ?pulumi.Input.mapOptionalInputValue<WorkerPreviewsBaseConfigObservabilityLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'redactQueryString': ?redactQueryString,
      'traces': ?pulumi.Input.mapOptionalInputValue<WorkerPreviewsBaseConfigObservabilityTraces, Map<String, dynamic>>(traces, (value) => value.toMap()),
    };
  }

  factory WorkerPreviewsBaseConfigObservability.fromMap(Map<String, dynamic> map) {
    return WorkerPreviewsBaseConfigObservability(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      headSamplingRate: (() { final guardedValue = map['headSamplingRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      issues: (() { final guardedValue = map['issues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerPreviewsBaseConfigObservabilityIssues.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerPreviewsBaseConfigObservabilityLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redactQueryString: (() { final guardedValue = map['redactQueryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      traces: (() { final guardedValue = map['traces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerPreviewsBaseConfigObservabilityTraces.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
