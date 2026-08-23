// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_drill_down_config_left_drill_down_custom_settings_external_link.dart';
import 'dashboard_chart_dashboard_chart_drill_down_config_left_drill_down_custom_settings_filter.dart';
import 'dashboard_chart_dashboard_chart_drill_down_config_left_drill_down_custom_settings_query.dart';

class DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettings {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsExternalLink>? externalLink;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilter>? filter;
  /// (Optional)
  final pulumi.Input<String>? leftClickColumn;
  /// (Required)
  final pulumi.Input<bool> newTab;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsQuery>? query;

  /// Creates a new [DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettings].
  /// [externalLink] A nested object resource.
  /// [filter] A nested object resource.
  /// [leftClickColumn] (Optional)
  /// [newTab] (Required)
  /// [query] A nested object resource.
  const DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettings({
    this.externalLink,
    this.filter,
    this.leftClickColumn,
    required this.newTab,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalLink': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsExternalLink, Map<String, dynamic>>(externalLink, (value) => value.toMap()),
      'filter': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'leftClickColumn': ?leftClickColumn,
      'newTab': newTab,
      'query': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsQuery, Map<String, dynamic>>(query, (value) => value.toMap()),
    };
  }

  factory DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettings.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettings(
      externalLink: (() { final guardedValue = map['externalLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsExternalLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      leftClickColumn: (() { final guardedValue = map['leftClickColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      newTab: pulumi.Input.fromValue(map['newTab'] as bool),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
