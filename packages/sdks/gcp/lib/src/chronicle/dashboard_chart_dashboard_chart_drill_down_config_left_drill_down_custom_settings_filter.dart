// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_drill_down_config_left_drill_down_custom_settings_filter_dashboard_filter.dart';

class DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilter {
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilterDashboardFilter>> dashboardFilters;

  /// Creates a new [DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilter].
  /// [dashboardFilters] Structure is documented below.
  const DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilter({
    required this.dashboardFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardFilters': pulumi.Input.mapInputValue<List<DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilterDashboardFilter>, List<Map<String, dynamic>>>(dashboardFilters, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilterDashboardFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilter.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilter(
      dashboardFilters: pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilterDashboardFilter>(map['dashboardFilters']!, (value) => DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilterDashboardFilter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
