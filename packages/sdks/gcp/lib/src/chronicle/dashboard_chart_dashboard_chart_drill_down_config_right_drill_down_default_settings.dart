// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartDrillDownConfigRightDrillDownDefaultSettings {
  /// (Required)
  final pulumi.Input<bool> enabled;

  /// Creates a new [DashboardChartDashboardChartDrillDownConfigRightDrillDownDefaultSettings].
  /// [enabled] (Required)
  const DashboardChartDashboardChartDrillDownConfigRightDrillDownDefaultSettings({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory DashboardChartDashboardChartDrillDownConfigRightDrillDownDefaultSettings.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartDrillDownConfigRightDrillDownDefaultSettings(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
