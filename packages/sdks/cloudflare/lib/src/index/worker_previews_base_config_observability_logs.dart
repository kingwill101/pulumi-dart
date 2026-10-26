// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPreviewsBaseConfigObservabilityLogs {
  /// A list of destinations where logs will be exported to.
  final pulumi.Input<List<String>?>? destinations;
  /// Whether logs are enabled for the Worker.
  final pulumi.Input<bool?>? enabled;
  /// The sampling rate for logs. From 0 to 1 (1 = 100%, 0.1 = 10%).
  final pulumi.Input<double?>? headSamplingRate;
  /// Whether [invocation logs](https://developers.cloudflare.com/workers/observability/logs/workers-logs/#invocation-logs) are enabled for the Worker.
  final pulumi.Input<bool?>? invocationLogs;
  /// Whether log persistence is enabled for the Worker.
  final pulumi.Input<bool?>? persist;

  /// Creates a new [WorkerPreviewsBaseConfigObservabilityLogs].
  /// [destinations] A list of destinations where logs will be exported to.
  /// [enabled] Whether logs are enabled for the Worker.
  /// [headSamplingRate] The sampling rate for logs. From 0 to 1 (1 = 100%, 0.1 = 10%).
  /// [invocationLogs] Whether [invocation logs](https://developers.cloudflare.com/workers/observability/logs/workers-logs/#invocation-logs) are enabled for the Worker.
  /// [persist] Whether log persistence is enabled for the Worker.
  const WorkerPreviewsBaseConfigObservabilityLogs({
    this.destinations,
    this.enabled,
    this.headSamplingRate,
    this.invocationLogs,
    this.persist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations,
      'enabled': ?enabled,
      'headSamplingRate': ?headSamplingRate,
      'invocationLogs': ?invocationLogs,
      'persist': ?persist,
    };
  }

  factory WorkerPreviewsBaseConfigObservabilityLogs.fromMap(Map<String, dynamic> map) {
    return WorkerPreviewsBaseConfigObservabilityLogs(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      headSamplingRate: (() { final guardedValue = map['headSamplingRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      invocationLogs: (() { final guardedValue = map['invocationLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      persist: (() { final guardedValue = map['persist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
