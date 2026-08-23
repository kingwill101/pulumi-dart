// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationSeriesGaugeConfigLimitValue {
  /// (Optional)
  final pulumi.Input<String>? color;
  /// (Optional)
  final pulumi.Input<int>? value;

  /// Creates a new [DashboardChartDashboardChartVisualizationSeriesGaugeConfigLimitValue].
  /// [color] (Optional)
  /// [value] (Optional)
  const DashboardChartDashboardChartVisualizationSeriesGaugeConfigLimitValue({
    this.color,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?color,
      'value': ?value,
    };
  }

  factory DashboardChartDashboardChartVisualizationSeriesGaugeConfigLimitValue.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationSeriesGaugeConfigLimitValue(
      color: (() { final guardedValue = map['color']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
