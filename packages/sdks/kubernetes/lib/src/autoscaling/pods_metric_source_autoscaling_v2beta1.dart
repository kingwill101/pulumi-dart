// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector.dart';

/// PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
class PodsMetricSourceAutoscalingV2beta1 {
  /// metricName is the name of the metric in question
  final pulumi.Input<String> metricName;
  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.
  final pulumi.Input<LabelSelector>? selector;
  /// targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  final pulumi.Input<String> targetAverageValue;

  /// Creates a new [PodsMetricSourceAutoscalingV2beta1].
  /// [metricName] metricName is the name of the metric in question
  /// [selector] selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.
  /// [targetAverageValue] targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  const PodsMetricSourceAutoscalingV2beta1({
    required this.metricName,
    this.selector,
    required this.targetAverageValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'selector': ?pulumi.Input.mapOptionalInputValue<LabelSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'targetAverageValue': targetAverageValue,
    };
  }

  factory PodsMetricSourceAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return PodsMetricSourceAutoscalingV2beta1(
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetAverageValue: pulumi.Input.fromValue(map['targetAverageValue'] as String),
    );
  }
}
