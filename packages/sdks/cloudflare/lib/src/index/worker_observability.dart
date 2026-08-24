// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_observability_logs.dart';
import 'worker_observability_traces.dart';

class WorkerObservability {
  /// Whether observability is enabled for the Worker.
  final pulumi.Input<bool?>? enabled;
  /// The sampling rate for observability. From 0 to 1 (1 = 100%, 0.1 = 10%).
  final pulumi.Input<double?>? headSamplingRate;
  /// Log settings for the Worker.
  final pulumi.Input<WorkerObservabilityLogs?>? logs;
  /// Trace settings for the Worker.
  final pulumi.Input<WorkerObservabilityTraces?>? traces;

  /// Creates a new [WorkerObservability].
  /// [enabled] Whether observability is enabled for the Worker.
  /// [headSamplingRate] The sampling rate for observability. From 0 to 1 (1 = 100%, 0.1 = 10%).
  /// [logs] Log settings for the Worker.
  /// [traces] Trace settings for the Worker.
  const WorkerObservability({
    this.enabled,
    this.headSamplingRate,
    this.logs,
    this.traces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'headSamplingRate': ?headSamplingRate,
      'logs': ?pulumi.Input.mapOptionalInputValue<WorkerObservabilityLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'traces': ?pulumi.Input.mapOptionalInputValue<WorkerObservabilityTraces, Map<String, dynamic>>(traces, (value) => value.toMap()),
    };
  }

  factory WorkerObservability.fromMap(Map<String, dynamic> map) {
    return WorkerObservability(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      headSamplingRate: (() { final guardedValue = map['headSamplingRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerObservabilityLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      traces: (() { final guardedValue = map['traces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerObservabilityTraces.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
