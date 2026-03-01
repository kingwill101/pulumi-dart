// ignore_for_file: unused_element, unnecessary_cast

import '../meta/label_selector_patch.dart';
import 'cross_version_object_reference_patch_autoscaling_v2beta1.dart';

/// ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricSourcePatchAutoscalingV2beta1 {
  /// averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  final String? averageValue;
  /// metricName is the name of the metric in question.
  final String? metricName;
  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.
  final LabelSelectorPatch? selector;
  /// target is the described Kubernetes object.
  final CrossVersionObjectReferencePatchAutoscalingV2beta1? target;
  /// targetValue is the target value of the metric (as a quantity).
  final String? targetValue;

  /// Creates a new [ObjectMetricSourcePatchAutoscalingV2beta1].
  /// [averageValue] averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  /// [metricName] metricName is the name of the metric in question.
  /// [selector] selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.
  /// [target] target is the described Kubernetes object.
  /// [targetValue] targetValue is the target value of the metric (as a quantity).
  ObjectMetricSourcePatchAutoscalingV2beta1({
    this.averageValue,
    this.metricName,
    this.selector,
    this.target,
    this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'averageValue': ?averageValue,
      'metricName': ?metricName,
      'selector': ?selector == null ? null : selector!.toMap(),
      'target': ?target == null ? null : target!.toMap(),
      'targetValue': ?targetValue,
    };
  }

  factory ObjectMetricSourcePatchAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return ObjectMetricSourcePatchAutoscalingV2beta1(
      averageValue: map['averageValue'] == null ? null : map['averageValue'] as String,
      metricName: map['metricName'] == null ? null : map['metricName'] as String,
      selector: map['selector'] == null ? null : LabelSelectorPatch.fromMap((map['selector'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : CrossVersionObjectReferencePatchAutoscalingV2beta1.fromMap((map['target'] as Map).cast<String, dynamic>()),
      targetValue: map['targetValue'] == null ? null : map['targetValue'] as String,
    );
  }
}

