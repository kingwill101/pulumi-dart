// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector.dart';
import 'cross_version_object_reference_autoscaling_v2beta1.dart';

/// ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricStatusAutoscalingV2beta1 {
  /// averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
  final pulumi.Input<String?>? averageValue;
  /// currentValue is the current value of the metric (as a quantity).
  final pulumi.Input<String> currentValue;
  /// metricName is the name of the metric in question.
  final pulumi.Input<String> metricName;
  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the ObjectMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  final pulumi.Input<LabelSelector?>? selector;
  /// target is the described Kubernetes object.
  final pulumi.Input<CrossVersionObjectReferenceAutoscalingV2beta1> target;

  /// Creates a new [ObjectMetricStatusAutoscalingV2beta1].
  /// [averageValue] averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
  /// [currentValue] currentValue is the current value of the metric (as a quantity).
  /// [metricName] metricName is the name of the metric in question.
  /// [selector] selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the ObjectMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  /// [target] target is the described Kubernetes object.
  const ObjectMetricStatusAutoscalingV2beta1({
    this.averageValue,
    required this.currentValue,
    required this.metricName,
    this.selector,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'averageValue': ?averageValue,
      'currentValue': currentValue,
      'metricName': metricName,
      'selector': ?pulumi.Input.mapOptionalInputValue<LabelSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'target': pulumi.Input.mapInputValue<CrossVersionObjectReferenceAutoscalingV2beta1, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory ObjectMetricStatusAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return ObjectMetricStatusAutoscalingV2beta1(
      averageValue: (() { final guardedValue = map['averageValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentValue: pulumi.Input.fromValue(map['currentValue'] as String),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: pulumi.Input.fromValue(CrossVersionObjectReferenceAutoscalingV2beta1.fromMap((map['target']! as Map).cast<String, dynamic>())),
    );
  }
}
