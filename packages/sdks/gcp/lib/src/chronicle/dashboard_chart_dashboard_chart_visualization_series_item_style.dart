// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationSeriesItemStyle {
  /// (Optional)
  final pulumi.Input<String?>? borderColor;
  /// (Optional)
  final pulumi.Input<int?>? borderWidth;
  /// (Optional)
  final pulumi.Input<String?>? color;

  /// Creates a new [DashboardChartDashboardChartVisualizationSeriesItemStyle].
  /// [borderColor] (Optional)
  /// [borderWidth] (Optional)
  /// [color] (Optional)
  const DashboardChartDashboardChartVisualizationSeriesItemStyle({
    this.borderColor,
    this.borderWidth,
    this.color,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'borderColor': ?borderColor,
      'borderWidth': ?borderWidth,
      'color': ?color,
    };
  }

  factory DashboardChartDashboardChartVisualizationSeriesItemStyle.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationSeriesItemStyle(
      borderColor: (() { final guardedValue = map['borderColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      borderWidth: (() { final guardedValue = map['borderWidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      color: (() { final guardedValue = map['color']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
