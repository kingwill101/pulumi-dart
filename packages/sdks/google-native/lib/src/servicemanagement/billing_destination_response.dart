// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of a specific billing destination (Currently only support bill against consumer project).
class BillingDestinationResponse {
  /// Names of the metrics to report to this billing destination. Each name must be defined in Service.metrics section.
  final pulumi.Input<List<String>> metrics;
  /// The monitored resource type. The type must be defined in Service.monitored_resources section.
  final pulumi.Input<String> monitoredResource;

  /// Creates a new [BillingDestinationResponse].
  /// [metrics] Names of the metrics to report to this billing destination. Each name must be defined in Service.metrics section.
  /// [monitoredResource] The monitored resource type. The type must be defined in Service.monitored_resources section.
  BillingDestinationResponse({
    required this.metrics,
    required this.monitoredResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': metrics,
      'monitoredResource': monitoredResource,
    };
  }

  factory BillingDestinationResponse.fromMap(Map<String, dynamic> map) {
    return BillingDestinationResponse(
      metrics: pulumi.Input.fromValue((map['metrics'] as List).cast<String>()),
      monitoredResource: pulumi.Input.fromValue(map['monitoredResource'] as String),
    );
  }
}

