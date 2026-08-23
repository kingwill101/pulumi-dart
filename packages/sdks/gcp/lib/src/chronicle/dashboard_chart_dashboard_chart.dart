// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_chart_datasource.dart';
import 'dashboard_chart_dashboard_chart_drill_down_config.dart';
import 'dashboard_chart_dashboard_chart_visualization.dart';

class DashboardChartDashboardChart {
  /// Query and datasource used in the chart.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartChartDatasource>? chartDatasource;
  /// Description of the dashboardChart.
  final pulumi.Input<String>? description;
  /// Display name/Title of the dashboardChart visible to users.
  final pulumi.Input<String> displayName;
  /// Drill down configuration.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartDrillDownConfig>? drillDownConfig;
  /// (Output)
  /// This checksum is computed by the server.
  final pulumi.Input<String>? etag;
  /// (Output)
  /// The resource name of the DashboardChart.
  final pulumi.Input<String>? name;
  /// Type of tile (e.g., visualization, button, markdown).
  /// Possible values are: `TILE_TYPE_UNSPECIFIED`, `TILE_TYPE_VISUALIZATION`, `TILE_TYPE_BUTTON`, `TILE_TYPE_MARKDOWN`.
  final pulumi.Input<String>? tileType;
  /// Visualization config for a chart.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualization> visualization;

  /// Creates a new [DashboardChartDashboardChart].
  /// [chartDatasource] Query and datasource used in the chart.
  /// [description] Description of the dashboardChart.
  /// [displayName] Display name/Title of the dashboardChart visible to users.
  /// [drillDownConfig] Drill down configuration.
  /// [etag] (Output)
  /// [name] (Output)
  /// [tileType] Type of tile (e.g., visualization, button, markdown).
  /// [visualization] Visualization config for a chart.
  const DashboardChartDashboardChart({
    this.chartDatasource,
    this.description,
    required this.displayName,
    this.drillDownConfig,
    this.etag,
    this.name,
    this.tileType,
    required this.visualization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartDatasource': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartChartDatasource, Map<String, dynamic>>(chartDatasource, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'drillDownConfig': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartDrillDownConfig, Map<String, dynamic>>(drillDownConfig, (value) => value.toMap()),
      'etag': ?etag,
      'name': ?name,
      'tileType': ?tileType,
      'visualization': pulumi.Input.mapInputValue<DashboardChartDashboardChartVisualization, Map<String, dynamic>>(visualization, (value) => value.toMap()),
    };
  }

  factory DashboardChartDashboardChart.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChart(
      chartDatasource: (() { final guardedValue = map['chartDatasource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartChartDatasource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      drillDownConfig: (() { final guardedValue = map['drillDownConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartDrillDownConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tileType: (() { final guardedValue = map['tileType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      visualization: pulumi.Input.fromValue(DashboardChartDashboardChartVisualization.fromMap((map['visualization']! as Map).cast<String, dynamic>())),
    );
  }
}
