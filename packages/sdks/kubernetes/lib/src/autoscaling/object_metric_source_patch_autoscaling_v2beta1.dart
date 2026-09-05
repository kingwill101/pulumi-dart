// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector_patch.dart';
import 'cross_version_object_reference_patch_autoscaling_v2beta1.dart';

/// ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricSourcePatchAutoscalingV2beta1 {
  /// averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  final pulumi.Input<String?>? averageValue;
  /// metricName is the name of the metric in question.
  final pulumi.Input<String?>? metricName;
  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.
  final pulumi.Input<LabelSelectorPatch?>? selector;
  /// target is the described Kubernetes object.
  final pulumi.Input<CrossVersionObjectReferencePatchAutoscalingV2beta1?>? target;
  /// targetValue is the target value of the metric (as a quantity).
  final pulumi.Input<String?>? targetValue;

  /// Creates a new [ObjectMetricSourcePatchAutoscalingV2beta1].
  /// [averageValue] averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  /// [metricName] metricName is the name of the metric in question.
  /// [selector] selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.
  /// [target] target is the described Kubernetes object.
  /// [targetValue] targetValue is the target value of the metric (as a quantity).
  const ObjectMetricSourcePatchAutoscalingV2beta1({
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
      'selector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<CrossVersionObjectReferencePatchAutoscalingV2beta1, Map<String, dynamic>>(target, (value) => value.toMap()),
      'targetValue': ?targetValue,
    };
  }

  factory ObjectMetricSourcePatchAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return ObjectMetricSourcePatchAutoscalingV2beta1(
      averageValue: (() { final guardedValue = map['averageValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricName: (() { final guardedValue = map['metricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelectorPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CrossVersionObjectReferencePatchAutoscalingV2beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetValue: (() { final guardedValue = map['targetValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
