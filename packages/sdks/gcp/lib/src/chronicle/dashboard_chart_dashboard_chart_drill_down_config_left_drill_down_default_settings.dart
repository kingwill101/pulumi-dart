// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartDrillDownConfigLeftDrillDownDefaultSettings {
  /// (Required)
  final pulumi.Input<bool> enabled;

  /// Creates a new [DashboardChartDashboardChartDrillDownConfigLeftDrillDownDefaultSettings].
  /// [enabled] (Required)
  const DashboardChartDashboardChartDrillDownConfigLeftDrillDownDefaultSettings({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory DashboardChartDashboardChartDrillDownConfigLeftDrillDownDefaultSettings.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartDrillDownConfigLeftDrillDownDefaultSettings(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
