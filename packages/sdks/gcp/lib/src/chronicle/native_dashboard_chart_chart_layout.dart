// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NativeDashboardChartChartLayout {
  /// The number of columns the chart spans.
  final pulumi.Input<int> spanX;
  /// The number of rows the chart spans.
  final pulumi.Input<int> spanY;
  /// The starting X coordinate.
  final pulumi.Input<int?>? startX;
  /// The starting Y coordinate.
  final pulumi.Input<int?>? startY;

  /// Creates a new [NativeDashboardChartChartLayout].
  /// [spanX] The number of columns the chart spans.
  /// [spanY] The number of rows the chart spans.
  /// [startX] The starting X coordinate.
  /// [startY] The starting Y coordinate.
  const NativeDashboardChartChartLayout({
    required this.spanX,
    required this.spanY,
    this.startX,
    this.startY,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spanX': spanX,
      'spanY': spanY,
      'startX': ?startX,
      'startY': ?startY,
    };
  }

  factory NativeDashboardChartChartLayout.fromMap(Map<String, dynamic> map) {
    return NativeDashboardChartChartLayout(
      spanX: pulumi.Input.fromValue((map['spanX'] as num).toInt()),
      spanY: pulumi.Input.fromValue((map['spanY'] as num).toInt()),
      startX: (() { final guardedValue = map['startX']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      startY: (() { final guardedValue = map['startY']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
