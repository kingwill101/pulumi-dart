// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of a specific billing destination (Currently only support bill against consumer project).
class BillingDestination {
  /// Names of the metrics to report to this billing destination. Each name must be defined in Service.metrics section.
  final pulumi.Input<List<String>>? metrics;

  /// The monitored resource type. The type must be defined in Service.monitored_resources section.
  final pulumi.Input<String>? monitoredResource;

  /// Creates a new [BillingDestination].
  /// [metrics] Names of the metrics to report to this billing destination. Each name must be defined in Service.metrics section.
  /// [monitoredResource] The monitored resource type. The type must be defined in Service.monitored_resources section.
  BillingDestination({this.metrics, this.monitoredResource});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': ?metrics,
      'monitoredResource': ?monitoredResource,
    };
  }

  factory BillingDestination.fromMap(Map<String, dynamic> map) {
    return BillingDestination(
      metrics: (() {
        final guardedValue = map['metrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      monitoredResource: (() {
        final guardedValue = map['monitoredResource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
