// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'axis_scale.dart';

/// A chart axis.
class Axis {
  /// The label of the axis.
  final pulumi.Input<String>? label;
  /// The axis scale. By default, a linear scale is used.
  final pulumi.Input<AxisScale>? scale;

  /// Creates a new [Axis].
  /// [label] The label of the axis.
  /// [scale] The axis scale. By default, a linear scale is used.
  Axis({
    this.label,
    this.scale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
      'scale': ?pulumi.Input.mapOptionalInputValue<AxisScale, String>(scale, (value) => value.value),
    };
  }

  factory Axis.fromMap(Map<String, dynamic> map) {
    return Axis(
      label: map['label'] == null ? null : (map['label'] as String).input(),
      scale: map['scale'] == null ? null : (AxisScale.fromValue(map['scale'] as String)).input(),
    );
  }
}

