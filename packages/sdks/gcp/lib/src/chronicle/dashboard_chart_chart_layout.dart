// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartChartLayout {
  /// (Required)
  final pulumi.Input<int> spanX;
  /// (Required)
  final pulumi.Input<int> spanY;
  /// (Optional)
  final pulumi.Input<int>? startX;
  /// (Optional)
  final pulumi.Input<int>? startY;

  /// Creates a new [DashboardChartChartLayout].
  /// [spanX] (Required)
  /// [spanY] (Required)
  /// [startX] (Optional)
  /// [startY] (Optional)
  const DashboardChartChartLayout({
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

  factory DashboardChartChartLayout.fromMap(Map<String, dynamic> map) {
    return DashboardChartChartLayout(
      spanX: pulumi.Input.fromValue(map['spanX'] as int),
      spanY: pulumi.Input.fromValue(map['spanY'] as int),
      startX: (() { final guardedValue = map['startX']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      startY: (() { final guardedValue = map['startY']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
