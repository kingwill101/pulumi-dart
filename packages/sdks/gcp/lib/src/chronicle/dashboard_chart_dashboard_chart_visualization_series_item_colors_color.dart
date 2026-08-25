// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_visualization_series_item_colors_color_value.dart';

class DashboardChartDashboardChartVisualizationSeriesItemColorsColor {
  /// (Optional)
  final pulumi.Input<String?>? key;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationSeriesItemColorsColorValue?>? value;

  /// Creates a new [DashboardChartDashboardChartVisualizationSeriesItemColorsColor].
  /// [key] (Optional)
  /// [value] A nested object resource.
  const DashboardChartDashboardChartVisualizationSeriesItemColorsColor({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationSeriesItemColorsColorValue, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory DashboardChartDashboardChartVisualizationSeriesItemColorsColor.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationSeriesItemColorsColor(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationSeriesItemColorsColorValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
