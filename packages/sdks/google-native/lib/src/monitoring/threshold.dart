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
  const Threshold({
    this.color,
    this.direction,
    this.label,
    this.targetAxis,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?pulumi.Input.mapOptionalInputValue<ThresholdColor, String>(color, (value) => value.wireValue),
      'direction': ?pulumi.Input.mapOptionalInputValue<ThresholdDirection, String>(direction, (value) => value.wireValue),
      'label': ?label,
      'targetAxis': ?pulumi.Input.mapOptionalInputValue<ThresholdTargetAxis, String>(targetAxis, (value) => value.wireValue),
      'value': ?value,
    };
  }

  factory Threshold.fromMap(Map<String, dynamic> map) {
    return Threshold(
      color: (() { final guardedValue = map['color']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThresholdColor.fromValue(guardedValue as String)); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThresholdDirection.fromValue(guardedValue as String)); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAxis: (() { final guardedValue = map['targetAxis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThresholdTargetAxis.fromValue(guardedValue as String)); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
