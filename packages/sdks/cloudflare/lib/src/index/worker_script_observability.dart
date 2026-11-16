// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_script_observability_issues.dart';
import 'worker_script_observability_logs.dart';
import 'worker_script_observability_traces.dart';

class WorkerScriptObservability {
  /// Whether observability is enabled for the Worker.
  final pulumi.Input<bool> enabled;
  /// The sampling rate for incoming requests. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
  final pulumi.Input<double?>? headSamplingRate;
  /// Real-time Issues settings for the Worker.
  final pulumi.Input<WorkerScriptObservabilityIssues?>? issues;
  /// Log settings for the Worker.
  final pulumi.Input<WorkerScriptObservabilityLogs?>? logs;
  /// Trace settings for the Worker.
  final pulumi.Input<WorkerScriptObservabilityTraces?>? traces;

  /// Creates a new [WorkerScriptObservability].
  /// [enabled] Whether observability is enabled for the Worker.
  /// [headSamplingRate] The sampling rate for incoming requests. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
  /// [issues] Real-time Issues settings for the Worker.
  /// [logs] Log settings for the Worker.
  /// [traces] Trace settings for the Worker.
  const WorkerScriptObservability({
    required this.enabled,
    this.headSamplingRate,
    this.issues,
    this.logs,
    this.traces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'headSamplingRate': ?headSamplingRate,
      'issues': ?pulumi.Input.mapOptionalInputValue<WorkerScriptObservabilityIssues, Map<String, dynamic>>(issues, (value) => value.toMap()),
      'logs': ?pulumi.Input.mapOptionalInputValue<WorkerScriptObservabilityLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'traces': ?pulumi.Input.mapOptionalInputValue<WorkerScriptObservabilityTraces, Map<String, dynamic>>(traces, (value) => value.toMap()),
    };
  }

  factory WorkerScriptObservability.fromMap(Map<String, dynamic> map) {
    return WorkerScriptObservability(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      headSamplingRate: (() { final guardedValue = map['headSamplingRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      issues: (() { final guardedValue = map['issues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerScriptObservabilityIssues.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerScriptObservabilityLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      traces: (() { final guardedValue = map['traces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerScriptObservabilityTraces.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
