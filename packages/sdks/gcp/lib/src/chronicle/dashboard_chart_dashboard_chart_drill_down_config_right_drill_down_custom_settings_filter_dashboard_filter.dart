// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_drill_down_config_right_drill_down_custom_settings_filter_dashboard_filter_filter_operator_and_value.dart';

class DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilterDashboardFilter {
  /// (Required)
  final pulumi.Input<String> dashboardFilterId;
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilterDashboardFilterFilterOperatorAndValue>> filterOperatorAndValues;

  /// Creates a new [DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilterDashboardFilter].
  /// [dashboardFilterId] (Required)
  /// [filterOperatorAndValues] Structure is documented below.
  const DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilterDashboardFilter({
    required this.dashboardFilterId,
    required this.filterOperatorAndValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardFilterId': dashboardFilterId,
      'filterOperatorAndValues': pulumi.Input.mapInputValue<List<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilterDashboardFilterFilterOperatorAndValue>, List<Map<String, dynamic>>>(filterOperatorAndValues, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilterDashboardFilterFilterOperatorAndValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilterDashboardFilter.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilterDashboardFilter(
      dashboardFilterId: pulumi.Input.fromValue(map['dashboardFilterId'] as String),
      filterOperatorAndValues: pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilterDashboardFilterFilterOperatorAndValue>(map['filterOperatorAndValues']!, (value) => DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilterDashboardFilterFilterOperatorAndValue.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
