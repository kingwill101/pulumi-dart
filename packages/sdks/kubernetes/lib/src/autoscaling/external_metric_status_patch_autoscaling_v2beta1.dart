// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector_patch.dart';

/// ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
class ExternalMetricStatusPatchAutoscalingV2beta1 {
  /// currentAverageValue is the current value of metric averaged over autoscaled pods.
  final pulumi.Input<String>? currentAverageValue;
  /// currentValue is the current value of the metric (as a quantity)
  final pulumi.Input<String>? currentValue;
  /// metricName is the name of a metric used for autoscaling in metric system.
  final pulumi.Input<String>? metricName;
  /// metricSelector is used to identify a specific time series within a given metric.
  final pulumi.Input<LabelSelectorPatch>? metricSelector;

  /// Creates a new [ExternalMetricStatusPatchAutoscalingV2beta1].
  /// [currentAverageValue] currentAverageValue is the current value of metric averaged over autoscaled pods.
  /// [currentValue] currentValue is the current value of the metric (as a quantity)
  /// [metricName] metricName is the name of a metric used for autoscaling in metric system.
  /// [metricSelector] metricSelector is used to identify a specific time series within a given metric.
  ExternalMetricStatusPatchAutoscalingV2beta1({
    this.currentAverageValue,
    this.currentValue,
    this.metricName,
    this.metricSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentAverageValue': ?currentAverageValue,
      'currentValue': ?currentValue,
      'metricName': ?metricName,
      'metricSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(metricSelector, (value) => value.toMap()),
    };
  }

  factory ExternalMetricStatusPatchAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return ExternalMetricStatusPatchAutoscalingV2beta1(
      currentAverageValue: map['currentAverageValue'] == null ? null : (map['currentAverageValue']! as String).input(),
      currentValue: map['currentValue'] == null ? null : (map['currentValue']! as String).input(),
      metricName: map['metricName'] == null ? null : (map['metricName']! as String).input(),
      metricSelector: map['metricSelector'] == null ? null : (LabelSelectorPatch.fromMap((map['metricSelector']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

