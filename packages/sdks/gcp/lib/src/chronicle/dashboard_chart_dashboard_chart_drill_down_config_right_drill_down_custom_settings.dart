// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_drill_down_config_right_drill_down_custom_settings_external_link.dart';
import 'dashboard_chart_dashboard_chart_drill_down_config_right_drill_down_custom_settings_filter.dart';
import 'dashboard_chart_dashboard_chart_drill_down_config_right_drill_down_custom_settings_query.dart';

class DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettings {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsExternalLink>? externalLink;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilter>? filter;
  /// (Required)
  final pulumi.Input<bool> newTab;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsQuery>? query;

  /// Creates a new [DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettings].
  /// [externalLink] A nested object resource.
  /// [filter] A nested object resource.
  /// [newTab] (Required)
  /// [query] A nested object resource.
  const DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettings({
    this.externalLink,
    this.filter,
    required this.newTab,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalLink': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsExternalLink, Map<String, dynamic>>(externalLink, (value) => value.toMap()),
      'filter': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'newTab': newTab,
      'query': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsQuery, Map<String, dynamic>>(query, (value) => value.toMap()),
    };
  }

  factory DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettings.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettings(
      externalLink: (() { final guardedValue = map['externalLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsExternalLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      newTab: pulumi.Input.fromValue(map['newTab'] as bool),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
