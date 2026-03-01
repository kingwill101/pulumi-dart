// ignore_for_file: unused_element, unnecessary_cast

import '../meta/label_selector_patch.dart';

/// ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
class ExternalMetricStatusPatchAutoscalingV2beta1 {
  /// currentAverageValue is the current value of metric averaged over autoscaled pods.
  final String? currentAverageValue;
  /// currentValue is the current value of the metric (as a quantity)
  final String? currentValue;
  /// metricName is the name of a metric used for autoscaling in metric system.
  final String? metricName;
  /// metricSelector is used to identify a specific time series within a given metric.
  final LabelSelectorPatch? metricSelector;

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
      'metricSelector': ?metricSelector == null ? null : metricSelector!.toMap(),
    };
  }

  factory ExternalMetricStatusPatchAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return ExternalMetricStatusPatchAutoscalingV2beta1(
      currentAverageValue: map['currentAverageValue'] == null ? null : map['currentAverageValue'] as String,
      currentValue: map['currentValue'] == null ? null : map['currentValue'] as String,
      metricName: map['metricName'] == null ? null : map['metricName'] as String,
      metricSelector: map['metricSelector'] == null ? null : LabelSelectorPatch.fromMap((map['metricSelector'] as Map).cast<String, dynamic>()),
    );
  }
}

