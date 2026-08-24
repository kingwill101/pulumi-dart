// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_script_observability_logs.dart';
import 'workers_script_observability_traces.dart';

class WorkersScriptObservability {
  /// Whether observability is enabled for the Worker.
  final pulumi.Input<bool> enabled;
  /// The sampling rate for incoming requests. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
  final pulumi.Input<double?>? headSamplingRate;
  /// Log settings for the Worker.
  final pulumi.Input<WorkersScriptObservabilityLogs?>? logs;
  /// Trace settings for the Worker.
  final pulumi.Input<WorkersScriptObservabilityTraces?>? traces;

  /// Creates a new [WorkersScriptObservability].
  /// [enabled] Whether observability is enabled for the Worker.
  /// [headSamplingRate] The sampling rate for incoming requests. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
  /// [logs] Log settings for the Worker.
  /// [traces] Trace settings for the Worker.
  const WorkersScriptObservability({
    required this.enabled,
    this.headSamplingRate,
    this.logs,
    this.traces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'headSamplingRate': ?headSamplingRate,
      'logs': ?pulumi.Input.mapOptionalInputValue<WorkersScriptObservabilityLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'traces': ?pulumi.Input.mapOptionalInputValue<WorkersScriptObservabilityTraces, Map<String, dynamic>>(traces, (value) => value.toMap()),
    };
  }

  factory WorkersScriptObservability.fromMap(Map<String, dynamic> map) {
    return WorkersScriptObservability(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      headSamplingRate: (() { final guardedValue = map['headSamplingRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkersScriptObservabilityLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      traces: (() { final guardedValue = map['traces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkersScriptObservabilityTraces.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
