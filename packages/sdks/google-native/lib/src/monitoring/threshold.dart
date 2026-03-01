// ignore_for_file: unused_element, unnecessary_cast

import 'threshold_color.dart';
import 'threshold_direction.dart';
import 'threshold_target_axis.dart';

/// Defines a threshold for categorizing time series values.
class Threshold {
  /// The state color for this threshold. Color is not allowed in a XyChart.
  final ThresholdColor? color;
  /// The direction for the current threshold. Direction is not allowed in a XyChart.
  final ThresholdDirection? direction;
  /// A label for the threshold.
  final String? label;
  /// The target axis to use for plotting the threshold. Target axis is not allowed in a Scorecard.
  final ThresholdTargetAxis? targetAxis;
  /// The value of the threshold. The value should be defined in the native scale of the metric.
  final double? value;

  /// Creates a new [Threshold].
  /// [color] The state color for this threshold. Color is not allowed in a XyChart.
  /// [direction] The direction for the current threshold. Direction is not allowed in a XyChart.
  /// [label] A label for the threshold.
  /// [targetAxis] The target axis to use for plotting the threshold. Target axis is not allowed in a Scorecard.
  /// [value] The value of the threshold. The value should be defined in the native scale of the metric.
  Threshold({
    this.color,
    this.direction,
    this.label,
    this.targetAxis,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?color == null ? null : color!.value,
      'direction': ?direction == null ? null : direction!.value,
      'label': ?label,
      'targetAxis': ?targetAxis == null ? null : targetAxis!.value,
      'value': ?value,
    };
  }

  factory Threshold.fromMap(Map<String, dynamic> map) {
    return Threshold(
      color: map['color'] == null ? null : ThresholdColor.fromValue(map['color'] as String),
      direction: map['direction'] == null ? null : ThresholdDirection.fromValue(map['direction'] as String),
      label: map['label'] == null ? null : map['label'] as String,
      targetAxis: map['targetAxis'] == null ? null : ThresholdTargetAxis.fromValue(map['targetAxis'] as String),
      value: map['value'] == null ? null : map['value'] as double,
    );
  }
}

