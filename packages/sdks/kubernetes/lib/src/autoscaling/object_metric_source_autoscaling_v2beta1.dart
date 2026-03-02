// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector.dart';
import 'cross_version_object_reference_autoscaling_v2beta1.dart';

/// ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricSourceAutoscalingV2beta1 {
  /// averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  final pulumi.Input<String>? averageValue;
  /// metricName is the name of the metric in question.
  final pulumi.Input<String> metricName;
  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.
  final pulumi.Input<LabelSelector>? selector;
  /// target is the described Kubernetes object.
  final pulumi.Input<CrossVersionObjectReferenceAutoscalingV2beta1> target;
  /// targetValue is the target value of the metric (as a quantity).
  final pulumi.Input<String> targetValue;

  /// Creates a new [ObjectMetricSourceAutoscalingV2beta1].
  /// [averageValue] averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  /// [metricName] metricName is the name of the metric in question.
  /// [selector] selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.
  /// [target] target is the described Kubernetes object.
  /// [targetValue] targetValue is the target value of the metric (as a quantity).
  ObjectMetricSourceAutoscalingV2beta1({
    this.averageValue,
    required this.metricName,
    this.selector,
    required this.target,
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'averageValue': ?averageValue,
      'metricName': metricName,
      'selector': ?pulumi.Input.mapOptionalInputValue<LabelSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'target': pulumi.Input.mapInputValue<CrossVersionObjectReferenceAutoscalingV2beta1, Map<String, dynamic>>(target, (value) => value.toMap()),
      'targetValue': targetValue,
    };
  }

  factory ObjectMetricSourceAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return ObjectMetricSourceAutoscalingV2beta1(
      averageValue: map['averageValue'] == null ? null : (map['averageValue']! as String).input(),
      metricName: (map['metricName'] as String).input(),
      selector: map['selector'] == null ? null : (LabelSelector.fromMap((map['selector']! as Map).cast<String, dynamic>())).input(),
      target: (CrossVersionObjectReferenceAutoscalingV2beta1.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
      targetValue: (map['targetValue'] as String).input(),
    );
  }
}

