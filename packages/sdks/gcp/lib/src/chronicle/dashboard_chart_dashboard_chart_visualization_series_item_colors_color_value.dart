// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationSeriesItemColorsColorValue {
  /// (Optional)
  final pulumi.Input<String?>? color;
  /// (Optional)
  final pulumi.Input<String?>? label;

  /// Creates a new [DashboardChartDashboardChartVisualizationSeriesItemColorsColorValue].
  /// [color] (Optional)
  /// [label] (Optional)
  const DashboardChartDashboardChartVisualizationSeriesItemColorsColorValue({
    this.color,
    this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?color,
      'label': ?label,
    };
  }

  factory DashboardChartDashboardChartVisualizationSeriesItemColorsColorValue.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationSeriesItemColorsColorValue(
      color: (() { final guardedValue = map['color']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
