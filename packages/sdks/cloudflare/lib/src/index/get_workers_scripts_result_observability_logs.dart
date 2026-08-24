// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersScriptsResultObservabilityLogs {
  /// A list of destinations where logs will be exported to.
  final pulumi.Input<List<String>> destinations;
  /// Whether logs are enabled for the Worker.
  final pulumi.Input<bool> enabled;
  /// The sampling rate for logs. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
  final pulumi.Input<double> headSamplingRate;
  /// Whether [invocation logs](https://developers.cloudflare.com/workers/observability/logs/workers-logs/#invocation-logs) are enabled for the Worker.
  final pulumi.Input<bool> invocationLogs;
  /// Whether log persistence is enabled for the Worker.
  final pulumi.Input<bool> persist;

  /// Creates a new [GetWorkersScriptsResultObservabilityLogs].
  /// [destinations] A list of destinations where logs will be exported to.
  /// [enabled] Whether logs are enabled for the Worker.
  /// [headSamplingRate] The sampling rate for logs. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
  /// [invocationLogs] Whether [invocation logs](https://developers.cloudflare.com/workers/observability/logs/workers-logs/#invocation-logs) are enabled for the Worker.
  /// [persist] Whether log persistence is enabled for the Worker.
  const GetWorkersScriptsResultObservabilityLogs({
    required this.destinations,
    required this.enabled,
    required this.headSamplingRate,
    required this.invocationLogs,
    required this.persist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': destinations,
      'enabled': enabled,
      'headSamplingRate': headSamplingRate,
      'invocationLogs': invocationLogs,
      'persist': persist,
    };
  }

  factory GetWorkersScriptsResultObservabilityLogs.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptsResultObservabilityLogs(
      destinations: pulumi.Input.fromValue((map['destinations'] as List).cast<String>()),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      headSamplingRate: pulumi.Input.fromValue((map['headSamplingRate'] as num).toDouble()),
      invocationLogs: pulumi.Input.fromValue(map['invocationLogs'] as bool),
      persist: pulumi.Input.fromValue(map['persist'] as bool),
    );
  }
}
