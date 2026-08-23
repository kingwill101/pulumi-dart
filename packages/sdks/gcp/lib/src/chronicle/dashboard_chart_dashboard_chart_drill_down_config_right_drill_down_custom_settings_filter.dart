// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_drill_down_config_right_drill_down_custom_settings_filter_dashboard_filter.dart';

class DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilter {
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilterDashboardFilter>> dashboardFilters;

  /// Creates a new [DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilter].
  /// [dashboardFilters] Structure is documented below.
  const DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilter({
    required this.dashboardFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardFilters': pulumi.Input.mapInputValue<List<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilterDashboardFilter>, List<Map<String, dynamic>>>(dashboardFilters, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilterDashboardFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilter.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilter(
      dashboardFilters: pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilterDashboardFilter>(map['dashboardFilters']!, (value) => DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilterDashboardFilter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
