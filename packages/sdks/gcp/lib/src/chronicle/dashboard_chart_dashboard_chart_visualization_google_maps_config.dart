// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_visualization_google_maps_config_data_settings.dart';
import 'dashboard_chart_dashboard_chart_visualization_google_maps_config_map_position.dart';
import 'dashboard_chart_dashboard_chart_visualization_google_maps_config_point_settings.dart';

class DashboardChartDashboardChartVisualizationGoogleMapsConfig {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationGoogleMapsConfigDataSettings?>? dataSettings;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationGoogleMapsConfigMapPosition?>? mapPosition;
  /// Possible values are: `PLOT_MODE_UNSPECIFIED`, `PLOT_MODE_POINTS`, `PLOT_MODE_HEATMAP`, `PLOT_MODE_BOTH`.
  final pulumi.Input<String?>? plotMode;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationGoogleMapsConfigPointSettings?>? pointSettings;

  /// Creates a new [DashboardChartDashboardChartVisualizationGoogleMapsConfig].
  /// [dataSettings] A nested object resource.
  /// [mapPosition] A nested object resource.
  /// [plotMode] Possible values are: `PLOT_MODE_UNSPECIFIED`, `PLOT_MODE_POINTS`, `PLOT_MODE_HEATMAP`, `PLOT_MODE_BOTH`.
  /// [pointSettings] A nested object resource.
  const DashboardChartDashboardChartVisualizationGoogleMapsConfig({
    this.dataSettings,
    this.mapPosition,
    this.plotMode,
    this.pointSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSettings': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationGoogleMapsConfigDataSettings, Map<String, dynamic>>(dataSettings, (value) => value.toMap()),
      'mapPosition': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationGoogleMapsConfigMapPosition, Map<String, dynamic>>(mapPosition, (value) => value.toMap()),
      'plotMode': ?plotMode,
      'pointSettings': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationGoogleMapsConfigPointSettings, Map<String, dynamic>>(pointSettings, (value) => value.toMap()),
    };
  }

  factory DashboardChartDashboardChartVisualizationGoogleMapsConfig.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationGoogleMapsConfig(
      dataSettings: (() { final guardedValue = map['dataSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationGoogleMapsConfigDataSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mapPosition: (() { final guardedValue = map['mapPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationGoogleMapsConfigMapPosition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      plotMode: (() { final guardedValue = map['plotMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pointSettings: (() { final guardedValue = map['pointSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationGoogleMapsConfigPointSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
