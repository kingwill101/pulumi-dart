// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_visualization_series_item_colors_color.dart';

class DashboardChartDashboardChartVisualizationSeriesItemColors {
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartVisualizationSeriesItemColorsColor>>? colors;

  /// Creates a new [DashboardChartDashboardChartVisualizationSeriesItemColors].
  /// [colors] Structure is documented below.
  const DashboardChartDashboardChartVisualizationSeriesItemColors({
    this.colors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'colors': ?pulumi.Input.mapOptionalInputValue<List<DashboardChartDashboardChartVisualizationSeriesItemColorsColor>, List<Map<String, dynamic>>>(colors, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartVisualizationSeriesItemColorsColor, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DashboardChartDashboardChartVisualizationSeriesItemColors.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationSeriesItemColors(
      colors: (() { final guardedValue = map['colors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartVisualizationSeriesItemColorsColor>(guardedValue, (value) => DashboardChartDashboardChartVisualizationSeriesItemColorsColor.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
