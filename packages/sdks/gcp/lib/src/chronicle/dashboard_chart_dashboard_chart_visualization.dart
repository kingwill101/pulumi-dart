// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_visualization_button.dart';
import 'dashboard_chart_dashboard_chart_visualization_column_def.dart';
import 'dashboard_chart_dashboard_chart_visualization_google_maps_config.dart';
import 'dashboard_chart_dashboard_chart_visualization_legend.dart';
import 'dashboard_chart_dashboard_chart_visualization_markdown.dart';
import 'dashboard_chart_dashboard_chart_visualization_series.dart';
import 'dashboard_chart_dashboard_chart_visualization_table_config.dart';
import 'dashboard_chart_dashboard_chart_visualization_tooltip.dart';
import 'dashboard_chart_dashboard_chart_visualization_visual_map.dart';
import 'dashboard_chart_dashboard_chart_visualization_xaxis.dart';
import 'dashboard_chart_dashboard_chart_visualization_yaxis.dart';

class DashboardChartDashboardChartVisualization {
  /// Button config if tileType is TILE_TYPE_BUTTON.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationButton>? button;
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartVisualizationColumnDef>>? columnDefs;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationGoogleMapsConfig>? googleMapsConfig;
  /// (Optional)
  final pulumi.Input<String>? groupingType;
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartVisualizationLegend>>? legends;
  /// Markdown config if tileType is TILE_TYPE_MARKDOWN.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationMarkdown>? markdown;
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartVisualizationSeries>>? series;
  /// (Optional)
  final pulumi.Input<List<String>>? seriesColumns;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationTableConfig>? tableConfig;
  /// (Optional)
  final pulumi.Input<bool>? thresholdColoringEnabled;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationTooltip>? tooltip;
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartVisualizationVisualMap>>? visualMaps;
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartVisualizationXAxis>>? xAxes;
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartVisualizationYAxis>>? yAxes;

  /// Creates a new [DashboardChartDashboardChartVisualization].
  /// [button] Button config if tileType is TILE_TYPE_BUTTON.
  /// [columnDefs] Structure is documented below.
  /// [googleMapsConfig] A nested object resource.
  /// [groupingType] (Optional)
  /// [legends] Structure is documented below.
  /// [markdown] Markdown config if tileType is TILE_TYPE_MARKDOWN.
  /// [series] Structure is documented below.
  /// [seriesColumns] (Optional)
  /// [tableConfig] A nested object resource.
  /// [thresholdColoringEnabled] (Optional)
  /// [tooltip] A nested object resource.
  /// [visualMaps] Structure is documented below.
  /// [xAxes] Structure is documented below.
  /// [yAxes] Structure is documented below.
  const DashboardChartDashboardChartVisualization({
    this.button,
    this.columnDefs,
    this.googleMapsConfig,
    this.groupingType,
    this.legends,
    this.markdown,
    this.series,
    this.seriesColumns,
    this.tableConfig,
    this.thresholdColoringEnabled,
    this.tooltip,
    this.visualMaps,
    this.xAxes,
    this.yAxes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'button': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationButton, Map<String, dynamic>>(button, (value) => value.toMap()),
      'columnDefs': ?pulumi.Input.mapOptionalInputValue<List<DashboardChartDashboardChartVisualizationColumnDef>, List<Map<String, dynamic>>>(columnDefs, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartVisualizationColumnDef, Map<String, dynamic>>(value, (value) => value.toMap())),
      'googleMapsConfig': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationGoogleMapsConfig, Map<String, dynamic>>(googleMapsConfig, (value) => value.toMap()),
      'groupingType': ?groupingType,
      'legends': ?pulumi.Input.mapOptionalInputValue<List<DashboardChartDashboardChartVisualizationLegend>, List<Map<String, dynamic>>>(legends, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartVisualizationLegend, Map<String, dynamic>>(value, (value) => value.toMap())),
      'markdown': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationMarkdown, Map<String, dynamic>>(markdown, (value) => value.toMap()),
      'series': ?pulumi.Input.mapOptionalInputValue<List<DashboardChartDashboardChartVisualizationSeries>, List<Map<String, dynamic>>>(series, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartVisualizationSeries, Map<String, dynamic>>(value, (value) => value.toMap())),
      'seriesColumns': ?seriesColumns,
      'tableConfig': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationTableConfig, Map<String, dynamic>>(tableConfig, (value) => value.toMap()),
      'thresholdColoringEnabled': ?thresholdColoringEnabled,
      'tooltip': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationTooltip, Map<String, dynamic>>(tooltip, (value) => value.toMap()),
      'visualMaps': ?pulumi.Input.mapOptionalInputValue<List<DashboardChartDashboardChartVisualizationVisualMap>, List<Map<String, dynamic>>>(visualMaps, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartVisualizationVisualMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'xAxes': ?pulumi.Input.mapOptionalInputValue<List<DashboardChartDashboardChartVisualizationXAxis>, List<Map<String, dynamic>>>(xAxes, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartVisualizationXAxis, Map<String, dynamic>>(value, (value) => value.toMap())),
      'yAxes': ?pulumi.Input.mapOptionalInputValue<List<DashboardChartDashboardChartVisualizationYAxis>, List<Map<String, dynamic>>>(yAxes, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartVisualizationYAxis, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DashboardChartDashboardChartVisualization.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualization(
      button: (() { final guardedValue = map['button']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationButton.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      columnDefs: (() { final guardedValue = map['columnDefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartVisualizationColumnDef>(guardedValue, (value) => DashboardChartDashboardChartVisualizationColumnDef.fromMap((value as Map).cast<String, dynamic>()))); })(),
      googleMapsConfig: (() { final guardedValue = map['googleMapsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationGoogleMapsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      groupingType: (() { final guardedValue = map['groupingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      legends: (() { final guardedValue = map['legends']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartVisualizationLegend>(guardedValue, (value) => DashboardChartDashboardChartVisualizationLegend.fromMap((value as Map).cast<String, dynamic>()))); })(),
      markdown: (() { final guardedValue = map['markdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationMarkdown.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      series: (() { final guardedValue = map['series']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartVisualizationSeries>(guardedValue, (value) => DashboardChartDashboardChartVisualizationSeries.fromMap((value as Map).cast<String, dynamic>()))); })(),
      seriesColumns: (() { final guardedValue = map['seriesColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tableConfig: (() { final guardedValue = map['tableConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationTableConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      thresholdColoringEnabled: (() { final guardedValue = map['thresholdColoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tooltip: (() { final guardedValue = map['tooltip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationTooltip.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      visualMaps: (() { final guardedValue = map['visualMaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartVisualizationVisualMap>(guardedValue, (value) => DashboardChartDashboardChartVisualizationVisualMap.fromMap((value as Map).cast<String, dynamic>()))); })(),
      xAxes: (() { final guardedValue = map['xAxes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartVisualizationXAxis>(guardedValue, (value) => DashboardChartDashboardChartVisualizationXAxis.fromMap((value as Map).cast<String, dynamic>()))); })(),
      yAxes: (() { final guardedValue = map['yAxes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartVisualizationYAxis>(guardedValue, (value) => DashboardChartDashboardChartVisualizationYAxis.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
