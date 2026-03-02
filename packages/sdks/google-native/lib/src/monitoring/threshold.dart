// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'threshold_color.dart';
import 'threshold_direction.dart';
import 'threshold_target_axis.dart';

/// Defines a threshold for categorizing time series values.
class Threshold {
  /// The state color for this threshold. Color is not allowed in a XyChart.
  final pulumi.Input<ThresholdColor>? color;
  /// The direction for the current threshold. Direction is not allowed in a XyChart.
  final pulumi.Input<ThresholdDirection>? direction;
  /// A label for the threshold.
  final pulumi.Input<String>? label;
  /// The target axis to use for plotting the threshold. Target axis is not allowed in a Scorecard.
  final pulumi.Input<ThresholdTargetAxis>? targetAxis;
  /// The value of the threshold. The value should be defined in the native scale of the metric.
  final pulumi.Input<double>? value;

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
      'color': ?pulumi.Input.mapOptionalInputValue<ThresholdColor, String>(color, (value) => value.value),
      'direction': ?pulumi.Input.mapOptionalInputValue<ThresholdDirection, String>(direction, (value) => value.value),
      'label': ?label,
      'targetAxis': ?pulumi.Input.mapOptionalInputValue<ThresholdTargetAxis, String>(targetAxis, (value) => value.value),
      'value': ?value,
    };
  }

  factory Threshold.fromMap(Map<String, dynamic> map) {
    return Threshold(
      color: map['color'] == null ? null : (ThresholdColor.fromValue(map['color']! as String)).input(),
      direction: map['direction'] == null ? null : (ThresholdDirection.fromValue(map['direction']! as String)).input(),
      label: map['label'] == null ? null : (map['label']! as String).input(),
      targetAxis: map['targetAxis'] == null ? null : (ThresholdTargetAxis.fromValue(map['targetAxis']! as String)).input(),
      value: map['value'] == null ? null : (map['value']! as double).input(),
    );
  }
}

