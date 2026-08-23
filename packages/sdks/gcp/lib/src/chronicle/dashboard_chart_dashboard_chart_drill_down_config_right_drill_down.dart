// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_drill_down_config_right_drill_down_custom_settings.dart';
import 'dashboard_chart_dashboard_chart_drill_down_config_right_drill_down_default_settings.dart';

class DashboardChartDashboardChartDrillDownConfigRightDrillDown {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettings>? customSettings;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartDrillDownConfigRightDrillDownDefaultSettings>? defaultSettings;
  /// (Required)
  final pulumi.Input<String> displayName;
  /// (Required)
  final pulumi.Input<String> id;

  /// Creates a new [DashboardChartDashboardChartDrillDownConfigRightDrillDown].
  /// [customSettings] A nested object resource.
  /// [defaultSettings] A nested object resource.
  /// [displayName] (Required)
  /// [id] (Required)
  const DashboardChartDashboardChartDrillDownConfigRightDrillDown({
    this.customSettings,
    this.defaultSettings,
    required this.displayName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSettings': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettings, Map<String, dynamic>>(customSettings, (value) => value.toMap()),
      'defaultSettings': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartDrillDownConfigRightDrillDownDefaultSettings, Map<String, dynamic>>(defaultSettings, (value) => value.toMap()),
      'displayName': displayName,
      'id': id,
    };
  }

  factory DashboardChartDashboardChartDrillDownConfigRightDrillDown.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartDrillDownConfigRightDrillDown(
      customSettings: (() { final guardedValue = map['customSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultSettings: (() { final guardedValue = map['defaultSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartDrillDownConfigRightDrillDownDefaultSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
