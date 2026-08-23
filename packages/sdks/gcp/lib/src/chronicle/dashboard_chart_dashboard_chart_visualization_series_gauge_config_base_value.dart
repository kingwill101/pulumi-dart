// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationSeriesGaugeConfigBaseValue {
  /// (Optional)
  final pulumi.Input<String>? color;
  /// (Optional)
  final pulumi.Input<int>? value;

  /// Creates a new [DashboardChartDashboardChartVisualizationSeriesGaugeConfigBaseValue].
  /// [color] (Optional)
  /// [value] (Optional)
  const DashboardChartDashboardChartVisualizationSeriesGaugeConfigBaseValue({
    this.color,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?color,
      'value': ?value,
    };
  }

  factory DashboardChartDashboardChartVisualizationSeriesGaugeConfigBaseValue.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationSeriesGaugeConfigBaseValue(
      color: (() { final guardedValue = map['color']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
