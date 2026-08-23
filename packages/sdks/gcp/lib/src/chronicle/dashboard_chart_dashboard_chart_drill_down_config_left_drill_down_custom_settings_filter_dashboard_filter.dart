// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_drill_down_config_left_drill_down_custom_settings_filter_dashboard_filter_filter_operator_and_value.dart';

class DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilterDashboardFilter {
  /// (Required)
  final pulumi.Input<String> dashboardFilterId;
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilterDashboardFilterFilterOperatorAndValue>> filterOperatorAndValues;

  /// Creates a new [DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilterDashboardFilter].
  /// [dashboardFilterId] (Required)
  /// [filterOperatorAndValues] Structure is documented below.
  const DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilterDashboardFilter({
    required this.dashboardFilterId,
    required this.filterOperatorAndValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardFilterId': dashboardFilterId,
      'filterOperatorAndValues': pulumi.Input.mapInputValue<List<DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilterDashboardFilterFilterOperatorAndValue>, List<Map<String, dynamic>>>(filterOperatorAndValues, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilterDashboardFilterFilterOperatorAndValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilterDashboardFilter.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilterDashboardFilter(
      dashboardFilterId: pulumi.Input.fromValue(map['dashboardFilterId'] as String),
      filterOperatorAndValues: pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilterDashboardFilterFilterOperatorAndValue>(map['filterOperatorAndValues']!, (value) => DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilterDashboardFilterFilterOperatorAndValue.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
