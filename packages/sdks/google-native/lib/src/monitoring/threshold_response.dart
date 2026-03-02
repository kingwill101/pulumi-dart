// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a threshold for categorizing time series values.
class ThresholdResponse {
  /// The state color for this threshold. Color is not allowed in a XyChart.
  final pulumi.Input<String> color;
  /// The direction for the current threshold. Direction is not allowed in a XyChart.
  final pulumi.Input<String> direction;
  /// A label for the threshold.
  final pulumi.Input<String> label;
  /// The target axis to use for plotting the threshold. Target axis is not allowed in a Scorecard.
  final pulumi.Input<String> targetAxis;
  /// The value of the threshold. The value should be defined in the native scale of the metric.
  final pulumi.Input<double> value;

  /// Creates a new [ThresholdResponse].
  /// [color] The state color for this threshold. Color is not allowed in a XyChart.
  /// [direction] The direction for the current threshold. Direction is not allowed in a XyChart.
  /// [label] A label for the threshold.
  /// [targetAxis] The target axis to use for plotting the threshold. Target axis is not allowed in a Scorecard.
  /// [value] The value of the threshold. The value should be defined in the native scale of the metric.
  ThresholdResponse({
    required this.color,
    required this.direction,
    required this.label,
    required this.targetAxis,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': color,
      'direction': direction,
      'label': label,
      'targetAxis': targetAxis,
      'value': value,
    };
  }

  factory ThresholdResponse.fromMap(Map<String, dynamic> map) {
    return ThresholdResponse(
      color: (map['color'] as String).input(),
      direction: (map['direction'] as String).input(),
      label: (map['label'] as String).input(),
      targetAxis: (map['targetAxis'] as String).input(),
      value: (map['value'] as double).input(),
    );
  }
}

