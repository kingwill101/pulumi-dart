// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_visualization_series_gauge_config_base_value.dart';
import 'dashboard_chart_dashboard_chart_visualization_series_gauge_config_limit_value.dart';
import 'dashboard_chart_dashboard_chart_visualization_series_gauge_config_threshold_value.dart';

class DashboardChartDashboardChartVisualizationSeriesGaugeConfig {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationSeriesGaugeConfigBaseValue?>? baseValue;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationSeriesGaugeConfigLimitValue?>? limitValue;
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartVisualizationSeriesGaugeConfigThresholdValue>?>? thresholdValues;

  /// Creates a new [DashboardChartDashboardChartVisualizationSeriesGaugeConfig].
  /// [baseValue] A nested object resource.
  /// [limitValue] A nested object resource.
  /// [thresholdValues] Structure is documented below.
  const DashboardChartDashboardChartVisualizationSeriesGaugeConfig({
    this.baseValue,
    this.limitValue,
    this.thresholdValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseValue': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationSeriesGaugeConfigBaseValue, Map<String, dynamic>>(baseValue, (value) => value.toMap()),
      'limitValue': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationSeriesGaugeConfigLimitValue, Map<String, dynamic>>(limitValue, (value) => value.toMap()),
      'thresholdValues': ?pulumi.Input.mapOptionalInputValue<List<DashboardChartDashboardChartVisualizationSeriesGaugeConfigThresholdValue>, List<Map<String, dynamic>>>(thresholdValues, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartVisualizationSeriesGaugeConfigThresholdValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DashboardChartDashboardChartVisualizationSeriesGaugeConfig.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationSeriesGaugeConfig(
      baseValue: (() { final guardedValue = map['baseValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationSeriesGaugeConfigBaseValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      limitValue: (() { final guardedValue = map['limitValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationSeriesGaugeConfigLimitValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      thresholdValues: (() { final guardedValue = map['thresholdValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartVisualizationSeriesGaugeConfigThresholdValue>(guardedValue, (value) => DashboardChartDashboardChartVisualizationSeriesGaugeConfigThresholdValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
