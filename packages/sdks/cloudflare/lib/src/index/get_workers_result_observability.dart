// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_result_observability_logs.dart';
import 'get_workers_result_observability_traces.dart';

class GetWorkersResultObservability {
  /// Whether observability is enabled for the Worker.
  final pulumi.Input<bool> enabled;
  /// The sampling rate for observability. From 0 to 1 (1 = 100%, 0.1 = 10%).
  final pulumi.Input<double> headSamplingRate;
  /// Log settings for the Worker.
  final pulumi.Input<GetWorkersResultObservabilityLogs> logs;
  /// Whether query strings are removed from request URLs in logs and traces.
  final pulumi.Input<bool> redactQueryString;
  /// Trace settings for the Worker.
  final pulumi.Input<GetWorkersResultObservabilityTraces> traces;

  /// Creates a new [GetWorkersResultObservability].
  /// [enabled] Whether observability is enabled for the Worker.
  /// [headSamplingRate] The sampling rate for observability. From 0 to 1 (1 = 100%, 0.1 = 10%).
  /// [logs] Log settings for the Worker.
  /// [redactQueryString] Whether query strings are removed from request URLs in logs and traces.
  /// [traces] Trace settings for the Worker.
  const GetWorkersResultObservability({
    required this.enabled,
    required this.headSamplingRate,
    required this.logs,
    required this.redactQueryString,
    required this.traces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'headSamplingRate': headSamplingRate,
      'logs': pulumi.Input.mapInputValue<GetWorkersResultObservabilityLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'redactQueryString': redactQueryString,
      'traces': pulumi.Input.mapInputValue<GetWorkersResultObservabilityTraces, Map<String, dynamic>>(traces, (value) => value.toMap()),
    };
  }

  factory GetWorkersResultObservability.fromMap(Map<String, dynamic> map) {
    return GetWorkersResultObservability(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      headSamplingRate: pulumi.Input.fromValue((map['headSamplingRate'] as num).toDouble()),
      logs: pulumi.Input.fromValue(GetWorkersResultObservabilityLogs.fromMap((map['logs']! as Map).cast<String, dynamic>())),
      redactQueryString: pulumi.Input.fromValue(map['redactQueryString'] as bool),
      traces: pulumi.Input.fromValue(GetWorkersResultObservabilityTraces.fromMap((map['traces']! as Map).cast<String, dynamic>())),
    );
  }
}
