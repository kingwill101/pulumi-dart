// ignore_for_file: unused_element, unnecessary_cast

import '../meta/label_selector.dart';

/// ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
class ExternalMetricStatusAutoscalingV2beta1 {
  /// currentAverageValue is the current value of metric averaged over autoscaled pods.
  final String? currentAverageValue;
  /// currentValue is the current value of the metric (as a quantity)
  final String currentValue;
  /// metricName is the name of a metric used for autoscaling in metric system.
  final String metricName;
  /// metricSelector is used to identify a specific time series within a given metric.
  final LabelSelector? metricSelector;

  /// Creates a new [ExternalMetricStatusAutoscalingV2beta1].
  /// [currentAverageValue] currentAverageValue is the current value of metric averaged over autoscaled pods.
  /// [currentValue] currentValue is the current value of the metric (as a quantity)
  /// [metricName] metricName is the name of a metric used for autoscaling in metric system.
  /// [metricSelector] metricSelector is used to identify a specific time series within a given metric.
  ExternalMetricStatusAutoscalingV2beta1({
    this.currentAverageValue,
    required this.currentValue,
    required this.metricName,
    this.metricSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentAverageValue': ?currentAverageValue,
      'currentValue': currentValue,
      'metricName': metricName,
      'metricSelector': ?metricSelector == null ? null : metricSelector!.toMap(),
    };
  }

  factory ExternalMetricStatusAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return ExternalMetricStatusAutoscalingV2beta1(
      currentAverageValue: map['currentAverageValue'] == null ? null : map['currentAverageValue'] as String,
      currentValue: map['currentValue'] as String,
      metricName: map['metricName'] as String,
      metricSelector: map['metricSelector'] == null ? null : LabelSelector.fromMap((map['metricSelector'] as Map).cast<String, dynamic>()),
    );
  }
}

