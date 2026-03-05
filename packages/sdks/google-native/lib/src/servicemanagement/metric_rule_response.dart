// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Bind API methods to metrics. Binding a method to a metric causes that metric's configured quota behaviors to apply to the method call.
class MetricRuleResponse {
  /// Metrics to update when the selected methods are called, and the associated cost applied to each metric. The key of the map is the metric name, and the values are the amount increased for the metric against which the quota limits are defined. The value must not be negative.
  final pulumi.Input<Map<String, String>> metricCosts;
  /// Selects the methods to which this rule applies. Refer to selector for syntax details.
  final pulumi.Input<String> selector;

  /// Creates a new [MetricRuleResponse].
  /// [metricCosts] Metrics to update when the selected methods are called, and the associated cost applied to each metric. The key of the map is the metric name, and the values are the amount increased for the metric against which the quota limits are defined. The value must not be negative.
  /// [selector] Selects the methods to which this rule applies. Refer to selector for syntax details.
  MetricRuleResponse({
    required this.metricCosts,
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricCosts': metricCosts,
      'selector': selector,
    };
  }

  factory MetricRuleResponse.fromMap(Map<String, dynamic> map) {
    return MetricRuleResponse(
      metricCosts: pulumi.Input.fromValue((map['metricCosts'] as Map).cast<String, String>()),
      selector: pulumi.Input.fromValue(map['selector'] as String),
    );
  }
}

