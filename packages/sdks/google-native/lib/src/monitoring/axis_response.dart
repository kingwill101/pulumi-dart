// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A chart axis.
class AxisResponse {
  /// The label of the axis.
  final pulumi.Input<String> label;

  /// The axis scale. By default, a linear scale is used.
  final pulumi.Input<String> scale;

  /// Creates a new [AxisResponse].
  /// [label] The label of the axis.
  /// [scale] The axis scale. By default, a linear scale is used.
  AxisResponse({required this.label, required this.scale});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'label': label, 'scale': scale};
  }

  factory AxisResponse.fromMap(Map<String, dynamic> map) {
    return AxisResponse(
      label: pulumi.Input.fromValue(map['label'] as String),
      scale: pulumi.Input.fromValue(map['scale'] as String),
    );
  }
}
