// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_observability_logs.dart';
import 'get_worker_observability_traces.dart';

class GetWorkerObservability {
  /// Whether observability is enabled for the Worker.
  final pulumi.Input<bool> enabled;
  /// The sampling rate for observability. From 0 to 1 (1 = 100%, 0.1 = 10%).
  final pulumi.Input<double> headSamplingRate;
  /// Log settings for the Worker.
  final pulumi.Input<GetWorkerObservabilityLogs> logs;
  /// Trace settings for the Worker.
  final pulumi.Input<GetWorkerObservabilityTraces> traces;

  /// Creates a new [GetWorkerObservability].
  /// [enabled] Whether observability is enabled for the Worker.
  /// [headSamplingRate] The sampling rate for observability. From 0 to 1 (1 = 100%, 0.1 = 10%).
  /// [logs] Log settings for the Worker.
  /// [traces] Trace settings for the Worker.
  const GetWorkerObservability({
    required this.enabled,
    required this.headSamplingRate,
    required this.logs,
    required this.traces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'headSamplingRate': headSamplingRate,
      'logs': pulumi.Input.mapInputValue<GetWorkerObservabilityLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'traces': pulumi.Input.mapInputValue<GetWorkerObservabilityTraces, Map<String, dynamic>>(traces, (value) => value.toMap()),
    };
  }

  factory GetWorkerObservability.fromMap(Map<String, dynamic> map) {
    return GetWorkerObservability(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      headSamplingRate: pulumi.Input.fromValue((map['headSamplingRate'] as num).toDouble()),
      logs: pulumi.Input.fromValue(GetWorkerObservabilityLogs.fromMap((map['logs']! as Map).cast<String, dynamic>())),
      traces: pulumi.Input.fromValue(GetWorkerObservabilityTraces.fromMap((map['traces']! as Map).cast<String, dynamic>())),
    );
  }
}
