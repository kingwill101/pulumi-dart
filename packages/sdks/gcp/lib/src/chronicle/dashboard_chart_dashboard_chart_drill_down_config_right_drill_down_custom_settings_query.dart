// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsQuery {
  /// (Required)
  final pulumi.Input<String> query;

  /// Creates a new [DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsQuery].
  /// [query] (Required)
  const DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsQuery({
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': query,
    };
  }

  factory DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsQuery.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsQuery(
      query: pulumi.Input.fromValue(map['query'] as String),
    );
  }
}
