// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationSeriesAreaStyle {
  /// (Optional)
  final pulumi.Input<String?>? color;
  /// (Optional)
  final pulumi.Input<int?>? opacity;
  /// (Optional)
  final pulumi.Input<String?>? origin;
  /// (Optional)
  final pulumi.Input<int?>? shadowBlur;
  /// (Optional)
  final pulumi.Input<String?>? shadowColor;
  /// (Optional)
  final pulumi.Input<int?>? shadowOffsetX;
  /// (Optional)
  final pulumi.Input<int?>? shadowOffsetY;

  /// Creates a new [DashboardChartDashboardChartVisualizationSeriesAreaStyle].
  /// [color] (Optional)
  /// [opacity] (Optional)
  /// [origin] (Optional)
  /// [shadowBlur] (Optional)
  /// [shadowColor] (Optional)
  /// [shadowOffsetX] (Optional)
  /// [shadowOffsetY] (Optional)
  const DashboardChartDashboardChartVisualizationSeriesAreaStyle({
    this.color,
    this.opacity,
    this.origin,
    this.shadowBlur,
    this.shadowColor,
    this.shadowOffsetX,
    this.shadowOffsetY,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?color,
      'opacity': ?opacity,
      'origin': ?origin,
      'shadowBlur': ?shadowBlur,
      'shadowColor': ?shadowColor,
      'shadowOffsetX': ?shadowOffsetX,
      'shadowOffsetY': ?shadowOffsetY,
    };
  }

  factory DashboardChartDashboardChartVisualizationSeriesAreaStyle.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationSeriesAreaStyle(
      color: (() { final guardedValue = map['color']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      opacity: (() { final guardedValue = map['opacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      origin: (() { final guardedValue = map['origin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shadowBlur: (() { final guardedValue = map['shadowBlur']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      shadowColor: (() { final guardedValue = map['shadowColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shadowOffsetX: (() { final guardedValue = map['shadowOffsetX']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      shadowOffsetY: (() { final guardedValue = map['shadowOffsetY']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
