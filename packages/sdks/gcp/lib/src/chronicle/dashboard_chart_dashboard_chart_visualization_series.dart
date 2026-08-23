// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_visualization_series_area_style.dart';
import 'dashboard_chart_dashboard_chart_visualization_series_data_label.dart';
import 'dashboard_chart_dashboard_chart_visualization_series_encode.dart';
import 'dashboard_chart_dashboard_chart_visualization_series_gauge_config.dart';
import 'dashboard_chart_dashboard_chart_visualization_series_item_colors.dart';
import 'dashboard_chart_dashboard_chart_visualization_series_item_style.dart';
import 'dashboard_chart_dashboard_chart_visualization_series_metric_trend_config.dart';

class DashboardChartDashboardChartVisualizationSeries {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationSeriesAreaStyle>? areaStyle;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationSeriesDataLabel>? dataLabel;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationSeriesEncode>? encode;
  /// (Optional)
  final pulumi.Input<String>? field;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationSeriesGaugeConfig>? gaugeConfig;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationSeriesItemColors>? itemColors;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationSeriesItemStyle>? itemStyle;
  /// (Optional)
  final pulumi.Input<String>? label;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationSeriesMetricTrendConfig>? metricTrendConfig;
  /// (Optional)
  final pulumi.Input<List<String>>? radii;
  /// User specified series label.
  final pulumi.Input<String>? seriesName;
  /// Possible values are: `SAMESIGN`, `ALL`, `POSITIVE`, `NEGATIVE`.
  final pulumi.Input<String>? seriesStackStrategy;
  /// Possible values are: `LINE`, `BAR`, `PIE`, `TEXT`, `MAP`, `GAUGE`, `SCATTERPLOT`.
  final pulumi.Input<String>? seriesType;
  /// (Optional)
  final pulumi.Input<String>? seriesUniqueValue;
  /// (Optional)
  final pulumi.Input<bool>? showBackground;
  /// (Optional)
  final pulumi.Input<bool>? showSymbol;
  /// (Optional)
  final pulumi.Input<String>? stack;

  /// Creates a new [DashboardChartDashboardChartVisualizationSeries].
  /// [areaStyle] A nested object resource.
  /// [dataLabel] A nested object resource.
  /// [encode] A nested object resource.
  /// [field] (Optional)
  /// [gaugeConfig] A nested object resource.
  /// [itemColors] A nested object resource.
  /// [itemStyle] A nested object resource.
  /// [label] (Optional)
  /// [metricTrendConfig] A nested object resource.
  /// [radii] (Optional)
  /// [seriesName] User specified series label.
  /// [seriesStackStrategy] Possible values are: `SAMESIGN`, `ALL`, `POSITIVE`, `NEGATIVE`.
  /// [seriesType] Possible values are: `LINE`, `BAR`, `PIE`, `TEXT`, `MAP`, `GAUGE`, `SCATTERPLOT`.
  /// [seriesUniqueValue] (Optional)
  /// [showBackground] (Optional)
  /// [showSymbol] (Optional)
  /// [stack] (Optional)
  const DashboardChartDashboardChartVisualizationSeries({
    this.areaStyle,
    this.dataLabel,
    this.encode,
    this.field,
    this.gaugeConfig,
    this.itemColors,
    this.itemStyle,
    this.label,
    this.metricTrendConfig,
    this.radii,
    this.seriesName,
    this.seriesStackStrategy,
    this.seriesType,
    this.seriesUniqueValue,
    this.showBackground,
    this.showSymbol,
    this.stack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'areaStyle': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationSeriesAreaStyle, Map<String, dynamic>>(areaStyle, (value) => value.toMap()),
      'dataLabel': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationSeriesDataLabel, Map<String, dynamic>>(dataLabel, (value) => value.toMap()),
      'encode': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationSeriesEncode, Map<String, dynamic>>(encode, (value) => value.toMap()),
      'field': ?field,
      'gaugeConfig': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationSeriesGaugeConfig, Map<String, dynamic>>(gaugeConfig, (value) => value.toMap()),
      'itemColors': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationSeriesItemColors, Map<String, dynamic>>(itemColors, (value) => value.toMap()),
      'itemStyle': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationSeriesItemStyle, Map<String, dynamic>>(itemStyle, (value) => value.toMap()),
      'label': ?label,
      'metricTrendConfig': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationSeriesMetricTrendConfig, Map<String, dynamic>>(metricTrendConfig, (value) => value.toMap()),
      'radii': ?radii,
      'seriesName': ?seriesName,
      'seriesStackStrategy': ?seriesStackStrategy,
      'seriesType': ?seriesType,
      'seriesUniqueValue': ?seriesUniqueValue,
      'showBackground': ?showBackground,
      'showSymbol': ?showSymbol,
      'stack': ?stack,
    };
  }

  factory DashboardChartDashboardChartVisualizationSeries.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationSeries(
      areaStyle: (() { final guardedValue = map['areaStyle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationSeriesAreaStyle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataLabel: (() { final guardedValue = map['dataLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationSeriesDataLabel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encode: (() { final guardedValue = map['encode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationSeriesEncode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gaugeConfig: (() { final guardedValue = map['gaugeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationSeriesGaugeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      itemColors: (() { final guardedValue = map['itemColors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationSeriesItemColors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      itemStyle: (() { final guardedValue = map['itemStyle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationSeriesItemStyle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricTrendConfig: (() { final guardedValue = map['metricTrendConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationSeriesMetricTrendConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      radii: (() { final guardedValue = map['radii']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      seriesName: (() { final guardedValue = map['seriesName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      seriesStackStrategy: (() { final guardedValue = map['seriesStackStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      seriesType: (() { final guardedValue = map['seriesType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      seriesUniqueValue: (() { final guardedValue = map['seriesUniqueValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      showBackground: (() { final guardedValue = map['showBackground']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      showSymbol: (() { final guardedValue = map['showSymbol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stack: (() { final guardedValue = map['stack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
