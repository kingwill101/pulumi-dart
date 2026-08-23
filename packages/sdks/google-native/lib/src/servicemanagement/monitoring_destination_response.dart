// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of a specific monitoring destination (the producer project or the consumer project).
class MonitoringDestinationResponse {
  /// Types of the metrics to report to this monitoring destination. Each type must be defined in Service.metrics section.
  final pulumi.Input<List<String>> metrics;
  /// The monitored resource type. The type must be defined in Service.monitored_resources section.
  final pulumi.Input<String> monitoredResource;

  /// Creates a new [MonitoringDestinationResponse].
  /// [metrics] Types of the metrics to report to this monitoring destination. Each type must be defined in Service.metrics section.
  /// [monitoredResource] The monitored resource type. The type must be defined in Service.monitored_resources section.
  const MonitoringDestinationResponse({
    required this.metrics,
    required this.monitoredResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': metrics,
      'monitoredResource': monitoredResource,
    };
  }

  factory MonitoringDestinationResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringDestinationResponse(
      metrics: pulumi.Input.fromValue((map['metrics'] as List).cast<String>()),
      monitoredResource: pulumi.Input.fromValue(map['monitoredResource'] as String),
    );
  }
}
