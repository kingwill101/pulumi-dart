// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_scripts_result_observability_logs.dart';
import 'get_workers_scripts_result_observability_traces.dart';

class GetWorkersScriptsResultObservability {
  /// Whether observability is enabled for the Worker.
  final pulumi.Input<bool> enabled;
  /// The sampling rate for incoming requests. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
  final pulumi.Input<double> headSamplingRate;
  /// Log settings for the Worker.
  final pulumi.Input<GetWorkersScriptsResultObservabilityLogs> logs;
  /// Trace settings for the Worker.
  final pulumi.Input<GetWorkersScriptsResultObservabilityTraces> traces;

  /// Creates a new [GetWorkersScriptsResultObservability].
  /// [enabled] Whether observability is enabled for the Worker.
  /// [headSamplingRate] The sampling rate for incoming requests. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
  /// [logs] Log settings for the Worker.
  /// [traces] Trace settings for the Worker.
  const GetWorkersScriptsResultObservability({
    required this.enabled,
    required this.headSamplingRate,
    required this.logs,
    required this.traces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'headSamplingRate': headSamplingRate,
      'logs': pulumi.Input.mapInputValue<GetWorkersScriptsResultObservabilityLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'traces': pulumi.Input.mapInputValue<GetWorkersScriptsResultObservabilityTraces, Map<String, dynamic>>(traces, (value) => value.toMap()),
    };
  }

  factory GetWorkersScriptsResultObservability.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptsResultObservability(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      headSamplingRate: pulumi.Input.fromValue((map['headSamplingRate'] as num).toDouble()),
      logs: pulumi.Input.fromValue(GetWorkersScriptsResultObservabilityLogs.fromMap((map['logs']! as Map).cast<String, dynamic>())),
      traces: pulumi.Input.fromValue(GetWorkersScriptsResultObservabilityTraces.fromMap((map['traces']! as Map).cast<String, dynamic>())),
    );
  }
}
