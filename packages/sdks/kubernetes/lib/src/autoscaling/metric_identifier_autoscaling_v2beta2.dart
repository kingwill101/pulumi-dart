// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector.dart';

/// MetricIdentifier defines the name and optionally selector for a metric
class MetricIdentifierAutoscalingV2beta2 {
  /// name is the name of the given metric
  final pulumi.Input<String> name;
  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  final pulumi.Input<LabelSelector>? selector;

  /// Creates a new [MetricIdentifierAutoscalingV2beta2].
  /// [name] name is the name of the given metric
  /// [selector] selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  MetricIdentifierAutoscalingV2beta2({
    required this.name,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'selector': ?pulumi.Input.mapOptionalInputValue<LabelSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
    };
  }

  factory MetricIdentifierAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return MetricIdentifierAutoscalingV2beta2(
      name: pulumi.Input.fromValue(map['name'] as String),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

